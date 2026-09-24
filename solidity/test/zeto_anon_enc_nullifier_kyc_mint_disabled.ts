// SPDX-License-Identifier: Apache-2.0

import { ethers } from "hardhat";
import { Signer } from "ethers";
import { expect } from "chai";
import { kycHash } from "zeto-js";
import { Merkletree, InMemoryDB, str2Bytes } from "@iden3/js-merkletree";
import {
  User,
  newUser,
  newUTXO,
  doMint,
  parseRegistryEvents,
} from "./lib/utils";
import { prepareDepositKycProof, encodeToBytesForDeposit } from "./utils";
import { deployZeto } from "./lib/deploy";

// Zeto_AnonEncNullifierKyc disables mint() unless the pool is initialized
// with mintEnabled = true. A pool deployed through the 4-argument initializer
// -- what every deployment of this flavour uses -- can never mint, because
// the flag is set once, at initialization, and nothing can change it after.
//
// zeto_anon_enc_nullifier_kyc.ts covers the enabled path: it opts in so its
// existing mint-seeded scenarios keep working.
describe("Zeto_AnonEncNullifierKyc with minting disabled", function () {
  let deployer: Signer;
  let Alice: User;
  let erc20: any;
  let zeto: any;
  let smtKyc: Merkletree;

  before(async function () {
    const [d, a] = await ethers.getSigners();
    deployer = d;
    Alice = await newUser(a);

    // No options: the 4-argument initializer, mint disabled.
    ({ deployer, zeto, erc20 } = await deployZeto("Zeto_AnonEncNullifierKyc"));

    const tx = await zeto
      .connect(deployer)
      .register(Alice.babyJubPublicKey, "0x");
    const result = await tx.wait();

    smtKyc = new Merkletree(new InMemoryDB(str2Bytes("kyc")), true, 10);
    const publicKey = parseRegistryEvents(zeto, result);
    await smtKyc.add(kycHash(publicKey), kycHash(publicKey));
  });

  it("reports minting as disabled", async function () {
    expect(await zeto.mintEnabled()).to.equal(false);
  });

  it("rejects a mint by the owner and leaves the tree unchanged", async function () {
    const rootBefore = await zeto.getRoot();
    await expect(
      doMint(zeto, deployer, [newUTXO(100, Alice)]),
    ).to.be.rejectedWith("MintDisabled");
    expect(await zeto.getRoot()).to.equal(rootBefore);
  });

  it("rejects a mint by a non-owner", async function () {
    // onlyOwner runs before the flag check, so a non-owner is refused as a
    // non-owner -- enabling mint on a pool never opens it to anyone else.
    await expect(
      doMint(zeto, Alice.signer, [newUTXO(100, Alice)]),
    ).to.be.rejectedWith("OwnableUnauthorizedAccount");
  });

  it("still accepts deposits, which mint through the internal path", async function () {
    await (await erc20.connect(deployer).mint(Alice.ethAddress, 100)).wait();
    await (await erc20.connect(Alice.signer).approve(zeto.target, 100)).wait();

    const utxo100 = newUTXO(100, Alice);
    const utxo0 = newUTXO(0, Alice);
    const identitiesRoot = await smtKyc.root();
    const proof = await smtKyc.generateCircomVerifierProof(
      kycHash(Alice.babyJubPublicKey),
      identitiesRoot,
    );
    const identitiesMerkleProofs = [
      proof.siblings.map((s) => s.bigInt()),
      proof.siblings.map((s) => s.bigInt()),
    ];
    const { outputCommitments, encodedProof } = await prepareDepositKycProof(
      Alice,
      [utxo100, utxo0],
      identitiesRoot.bigInt(),
      identitiesMerkleProofs,
    );

    const rootBefore = await zeto.getRoot();
    const poolBefore = await erc20.balanceOf(zeto.target);
    await (
      await zeto
        .connect(Alice.signer)
        .deposit(
          100,
          outputCommitments,
          encodeToBytesForDeposit(encodedProof),
          "0x",
        )
    ).wait();

    expect(await zeto.getRoot()).to.not.equal(rootBefore);
    expect((await erc20.balanceOf(zeto.target)) - poolBefore).to.equal(100n);
  });

  it("cannot be re-initialized to turn minting on", async function () {
    const [name, symbol] = [await zeto.name(), await zeto.symbol()];
    const verifiers = {
      verifier: ethers.ZeroAddress,
      depositVerifier: ethers.ZeroAddress,
      withdrawVerifier: ethers.ZeroAddress,
      lockVerifier: ethers.ZeroAddress,
      burnVerifier: ethers.ZeroAddress,
      batchVerifier: ethers.ZeroAddress,
      batchWithdrawVerifier: ethers.ZeroAddress,
      batchLockVerifier: ethers.ZeroAddress,
      batchBurnVerifier: ethers.ZeroAddress,
    };
    await expect(
      zeto
        .connect(deployer)
        [
          "initialize(string,string,address,(address,address,address,address,address,address,address,address,address),bool)"
        ](name, symbol, await deployer.getAddress(), verifiers, true),
      // 0xf92ee8a9 = OpenZeppelin's InvalidInitialization(). It is not in
      // this contract's ABI, so hardhat reports it by selector, not by name.
    ).to.be.rejectedWith("0xf92ee8a9");
    expect(await zeto.mintEnabled()).to.equal(false);
  });

  it("is enabled only on a pool initialized with mintEnabled = true", async function () {
    const { zeto: enabled } = await deployZeto("Zeto_AnonEncNullifierKyc", {
      mintEnabled: true,
    });
    expect(await enabled.mintEnabled()).to.equal(true);
    await doMint(enabled, deployer, [newUTXO(1, Alice)]);

    const { zeto: explicitlyDisabled } = await deployZeto(
      "Zeto_AnonEncNullifierKyc",
      { mintEnabled: false },
    );
    expect(await explicitlyDisabled.mintEnabled()).to.equal(false);
    await expect(
      doMint(explicitlyDisabled, deployer, [newUTXO(1, Alice)]),
    ).to.be.rejectedWith("MintDisabled");
  });
});
