// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <=0.9.0;


// pragma solidity ^0.8.0;

contract lotteryApplication{

    //manager will be one which will be deploying contract
    address public manager;

    //persons who will take part
    address  payable[] public participants;

    //initialize manager once in contract using constructor
    constructor(){
        manager=msg.sender;
    }

    //to add some ethers we will call receive function once
    receive() external payable{
        require(msg.value == 1 ether,"minimum ether should be 1 ether");
        participants.push(payable(msg.sender));
    }

    //function to get current balance of contract 
    function getBalance() public view returns(uint){
        require(msg.sender==manager,"balance can only be checked by manager");
        return (address(this).balance);
    }

    //generate random number in hexdecimal anf convert it to uint
    function getRandomNum() internal view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,participants.length)));
    }

    function Winner() public{
        require(msg.sender==manager);
        require(participants.length>=3);
        uint randomNum=getRandomNum();
        //get random remainder as index of array which will be declared as winner
        uint winnerIndex=randomNum%participants.length;
        address payable winner=participants[winnerIndex];  
        winner.transfer(getBalance()); //transfer all ethers to winner

        //after declaring and rewarding winner reset participants array 
        participants=new address payable[](0); //reseting array
    }

}
