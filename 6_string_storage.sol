// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringExample {
    string public storedString = "Hello, World!"; // Stored in storage

    function manipulateString(string memory str) public pure returns (string memory) {
        // String manipulation in memory
        // No change to contract state
        return string(abi.encodePacked(str, " - Solidity"));
    }

    function updateStoredString() public {
        // Update string stored in storage
        storedString = "Updated string"; // Stored in storage
    }
}
