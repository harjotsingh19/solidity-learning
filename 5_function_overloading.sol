// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionOverloadingExample {
    // Function with one parameter, public visibility
    function process(uint256 num) public pure returns (uint256) {
        return num * 2;
    }

    // Function with two parameters of different types, internal visibility
    function process(uint256 num1, uint256 num2) public pure returns (uint256) {
        return num1 + num2;
    }

    // Function with two parameters of the same type, private visibility
    function process(string memory str1, string memory str2) public pure returns (string memory) {
        return string(abi.encodePacked(str1, str2));
    }

    // Call the process function with string arguments
    string public result = process("cat", "gone");
}


