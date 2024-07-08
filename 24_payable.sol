// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Payable{
    function getEther() payable public{

    }

    function checkBalance() public payable returns(uint){
        return address(this).balance;
    } 
}
