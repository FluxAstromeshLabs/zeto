// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.27;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title An ERC20 that burns a fee on every transfer, for tests only.
/// @dev Same constructor and mint() as SampleERC20, so a test can swap it in
///      as a pool's backing token. `feeBps` is the share of each transfer
///      (in basis points) that never reaches the receiver. Mints and burns
///      are not charged.
contract FeeOnTransferERC20 is ERC20, Ownable {
    uint256 public feeBps;

    constructor(
        address initialOwner
    ) ERC20("Fee on transfer token", "FEE") Ownable(initialOwner) {
        _mint(msg.sender, 1000000 * 10 ** 18);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function setFeeBps(uint256 bps) public onlyOwner {
        require(bps <= 10000, "fee above 100%");
        feeBps = bps;
    }

    function _update(address from, address to, uint256 value) internal override {
        if (from == address(0) || to == address(0) || feeBps == 0) {
            super._update(from, to, value);
            return;
        }
        uint256 fee = (value * feeBps) / 10000;
        super._update(from, address(0), fee);
        super._update(from, to, value - fee);
    }
}
