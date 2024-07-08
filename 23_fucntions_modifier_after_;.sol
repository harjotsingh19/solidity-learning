// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierDemo {
    address public owner;
    bool public isAdmin;
    uint public balance;

    event showBalance(uint totalBalanceLeft,string calledFirst,bool isAdminStatus);
    modifier onlyOwner {
        // Code executed before the function body
        require(msg.sender == owner, "Only owner can call this function");
        _; // Placeholder for the function body
        // Code executed after the function body
        isAdmin = true;
        emit showBalance(balance, "called after actual function got excuted",isAdmin);
      
    }

    constructor() {
        owner = msg.sender;
        isAdmin = false;
    }

    function withdraw() public onlyOwner {
        // Code for withdrawing funds
        balance +=100;
        emit showBalance(balance,"function code executed first before _; of modifier",isAdmin); 
    }
}

