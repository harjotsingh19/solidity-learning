// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract setowner {
    address public owner;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"not a owner");
        _;
    }

    function setOwner(address _newOwner) public onlyOwner{ //onlyOwner here means only owner of contract can call it 
        require(_newOwner != address(0),"invalid address");  //Checks if the provided _newOwner address is valid. The zero address (address(0)) is considered invalid. Throws an error if invalid.
        owner = _newOwner;
    }

    function tellOwner() public view returns (address){
        return msg.sender;
    }
}


