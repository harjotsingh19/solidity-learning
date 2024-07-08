// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentExample {
    address payable public owner;
    uint public balance;

    // State variable marked as payable
    address payable public beneficiary;

    // Constructor marked as payable
    constructor(address payable _beneficiary) payable {
        owner = payable(msg.sender);
        beneficiary = _beneficiary;
        // balance = 0;
    }

    function getEther() public {

    }

    // Function to receive Ether
    function contribute() public payable {
        balance += msg.value;
    }

    // Function to withdraw Ether by the owner
    function withdraw() public onlyOwner {
        require(address(this).balance > 0, "No funds available for withdrawal");
        owner.transfer(address(this).balance);
    }

    // Function to transfer funds to the beneficiary
    function releaseFunds() public onlyOwner {
        require(balance > 0, "No funds available for release");
        beneficiary.transfer(balance);
        balance = 0;
    }

    // Modifier to restrict access to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
}

