// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract revertSample{

    address public owner;
    uint public balance ; //internal identifier

    constructor(){
        owner=msg.sender;
        balance = 100;
    }

    event checkBalance(uint currentBalanance);

    modifier onlyOwner(){
        require(msg.sender == owner,"not an owner");
        _;
    }

     function sendAmount(uint _amount) public onlyOwner returns(uint){
        balance+=_amount;
        if(_amount<100){
            revert("amount should be more than or equal to 100");
        }
        emit checkBalance(balance);
        return balance;
    }

        error throwError(string);
       function sendAmountWithError(uint _amount) public onlyOwner returns(uint){
        balance+=_amount;
        if(_amount<200){
            revert throwError("amount should be more than or equal to 200");
        }
        emit checkBalance(balance);
        return balance;
    }


    function onwerTransfer(address _newOwner) external onlyOwner returns(address){
        owner = _newOwner;
        return owner;
    }

}


// //Derived contract
// contract amountTransfer is requireSample {
//     event checkBalance(uint currentBalanance);
//     function sendAmount(uint _amount) public onlyOwner{
//         require(_amount>=100,"amount should be more than or equal to 100");
//         balance+=_amount;
//         emit checkBalance(balance);
//     }

    

// }
