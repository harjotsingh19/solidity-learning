// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//all will return different hash 

//but output will remain same for same input
contract CryptographicFunctions {
    function calculateKeccak256EncodePacked(string memory _input,address _input2) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_input,_input2));
    }

       function calculateKeccak256Encode(string memory _input,address _input2) public pure returns (bytes32) {
        return keccak256(abi.encode(_input,_input2));
    }


    function calculateSha256EncodePacked(string memory _input,address _input2) public pure returns (bytes32) {
        return sha256(abi.encodePacked(_input,_input2));
    }

      function calculateSha256Encode(string memory _input,address _input2) public pure returns (bytes32) {
        return sha256(abi.encode(_input,_input2));
    }


    function calculateRipemd160EncodePacked(string memory _input,address _input2) public pure returns (bytes20) {
        return ripemd160(abi.encodePacked(_input,_input2));
    }

    function calculateRipemd160Encode(string memory _input,address _input2) public pure returns (bytes20) {
        return ripemd160(abi.encode(_input,_input2));
    }
}

