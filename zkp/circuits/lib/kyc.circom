// Copyright © 2025 Kaleido, Inc.
//
// SPDX-License-Identifier: Apache-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pragma circom 2.2.2;

include "../node_modules/circomlib/circuits/poseidon.circom";
include "../node_modules/circomlib/circuits/comparators.circom";
include "./check-smt-proof.circom";

// Kyc proves that each supplied public key is a member of the identities
// Sparse Merkle Tree.
//
// `enabled[i]` says whether slot i carries a real identity. The CALLER decides
// that, from whatever makes a slot padding in its own circuit -- for the token
// circuits an output commitment of 0, for deposit the same. It must never be
// derived from the public key itself.
//
// WHY THE CALLER DECIDES. This template used to compute the flag here, as
// `enabled[i] = 1 - IsZero(publicKeys[i][0])`, meaning "X coordinate is zero"
// stood in for "this slot is padding". Those are not the same claim. On
// BabyJubjub, x = 0 in `a*x^2 + y^2 = 1 + d*x^2*y^2` gives `y^2 = 1`, so TWO
// real curve points have Ax == 0: the identity (0, 1) -- which is BabyPbk(0),
// the public key of private key 0 -- and the order-2 point (0, p-1). A note
// owned by either has a non-zero commitment and a non-zero nullifier, so
// nothing else in the circuit treats the slot as padding, yet its membership
// proof was skipped and any identitiesRoot was accepted with an all-zero
// merkle proof. An unregistered key could therefore hold and move value in a
// KYC-gated pool while never appearing in the identities tree.
//
// Two defences, because either alone is enough to break:
//   1. `enabled` comes from the commitment, which the caller has already bound
//      to the key through CheckHashes.
//   2. An enabled slot must have a non-zero X coordinate, so the two points
//      above can never be an approved identity even if a future caller
//      computes `enabled` incorrectly.
template Kyc(nIdentities, nIdentitiesSMTLevels) {
  signal input publicKeys[nIdentities][2];
  signal input root;
  signal input merkleProof[nIdentities][nIdentitiesSMTLevels];
  signal input enabled[nIdentities];

  var publicKeyHashes[nIdentities];
  for (var i = 0; i < nIdentities; i++) {
    publicKeyHashes[i] = Poseidon(2)(inputs <== publicKeys[i]);

    // An enabled slot may not sit at Ax == 0. `enabled` is boolean, so this
    // is inert for padding (0 * anything === 0) and forces IsZero(Ax) == 0
    // for every real identity.
    var isPubKeyZero;
    isPubKeyZero = IsZero()(in <== publicKeys[i][0]);
    enabled[i] * isPubKeyZero === 0;
  }

  CheckSMTProof(nIdentities, nIdentitiesSMTLevels)(root <== root, merkleProof <== merkleProof, enabled <== enabled, leafNodeIndexes <== publicKeyHashes, leafNodeValues <== publicKeyHashes);
}
