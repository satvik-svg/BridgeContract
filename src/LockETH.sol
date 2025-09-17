// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { console } from "forge-std/console.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
contract LockETH is Ownable {

    address public tokenAddress;
    event Deposit(address indexed user, uint256 amount);
    mapping(address => uint256) public pendingAmount;
    constructor (address tokenaddress ) Ownable(msg.sender  ) {
        tokenAddress = tokenaddress;
    }

    function deposit(IERC20 token , uint256 amount) public payable {
        require(address(token) == tokenAddress);
        require(token.allowance(msg.sender, address(this)) >= amount, "Insufficient allowance");
        require(token.transferFrom(msg.sender, address(this), amount) , "Transfer failed");
        emit Deposit(msg.sender, amount);
    }
    function withdraw(IERC20 token , uint256 amount) public {
        require(pendingAmount[msg.sender] >= amount, "Insufficient pending amount");
        token.transfer(msg.sender, amount);
        pendingAmount[msg.sender] -= amount;
    }
    function onsignalfromOtherChain(uint256 amount) public onlyOwner() {
        pendingAmount[msg.sender] += amount;
        
    }

}