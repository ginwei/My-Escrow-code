// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("GINWEI", "GW") public payable {
        _mint(msg.sender, 1000);//equals to n*10^18
    }

    function approvement(address owner, address spender, uint256 amount) public virtual returns (bool) {
        _approve(owner, spender, amount);
        return true;
    }
}
