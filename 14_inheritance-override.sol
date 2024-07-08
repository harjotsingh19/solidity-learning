// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Parent contract A
contract A {
    // Function in parent contract A
    function calculate(uint256 a, uint256 b) public pure virtual returns (uint256) {
        return a + b;
    }
}

// Contract B derived from A
contract B is A {
    // Function overriding from parent contract A
    function calculate(uint256 a, uint256 b) public pure virtual override returns (uint256) {
        return a * b;
    }
}

// Contract C derived from B
contract C is B {
    // Function overriding from contract B
    function calculate(uint256 a, uint256 b) public pure override returns (uint256) {
        return a / b;
    }
}

