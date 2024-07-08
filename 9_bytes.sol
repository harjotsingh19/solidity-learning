// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {

    /*
        1 byte = 8 bits
        1 byte stores 2 hexadecimal digits 
        1 hexadecimal = 4 bits
        means bytes4 means 4 blocks , they will store 8 digits , 2 digits in 1 byte block
    */
    bytes5 public temp1; // 0x00000000  //static bytes
    bytes public temp2 = "abcd"; //dynamic bytes


    function setValue() public returns(uint){
        temp1="abcd";

        return temp1.length;

    }

    function getLength() public returns(uint){
        temp2.push('e');
        return temp2.length;
    }

    // / Retrieve the byte at a specific index
    function getByteAtIndex(uint index) public view returns (bytes1) {
        require(index < temp1.length, "Index out of bounds");
        return temp1[index]; //e.g. if index 2 then c hexa value will be returned i.e. 63
    }

}    
