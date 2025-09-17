// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Shiba is ERC20 {
    constructor() ERC20( "Shiba Inu" , "SHIB"){
        _mint(msg.sender, 1000000000000000000000000); 
    }
 }
