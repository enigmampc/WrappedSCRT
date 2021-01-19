// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v3.3.0/contracts/token/ERC20/ERC20Pausable.sol";

contract WrappedSCRT is ERC20Pausable {
    constructor(uint256 initialSupply, address bridge) public ERC20("WrappedSecret", "WSCRT") {
        _setupDecimals(6);
        _mint(bridge, initialSupply);
    }
    
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
    }
}