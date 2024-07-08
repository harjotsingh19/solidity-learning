// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OperatorsExample {
    // Arithmetic Operators
    function arithmeticOperations() public pure returns (uint256, uint256, uint256, uint256, uint256) {
        uint256 a = 10;
        uint256 b = 5;
        uint256 addition = a + b;
        uint256 subtraction = a - b;
        uint256 multiplication = a * b;
        uint256 division = a / b;
        uint256 modulus = a % b;
        return (addition, subtraction, multiplication, division, modulus);
    }

    // Comparison Operators
    function comparisonOperations() public pure returns (bool, bool, bool, bool, bool, bool) {
        uint256 x = 10;
        uint256 y = 5;
        bool isEqual = x == y;
        bool notEqual = x != y;
        bool greaterThan = x > y;
        bool lessThan = x < y;
        bool greaterThanOrEqual = x >= y;
        bool lessThanOrEqual = x <= y;
        return (isEqual, notEqual, greaterThan, lessThan, greaterThanOrEqual, lessThanOrEqual);
    }

    // Logical Operators
    function logicalOperations() public pure returns (bool, bool, bool) {
        bool condition1 = true;
        bool condition2 = false;
        bool andResult = condition1 && condition2;
        bool orResult = condition1 || condition2;
        bool notResult = !condition1;
        return (andResult, orResult, notResult);
    }

    // Bitwise Operators
    function bitwiseOperations() public pure returns (uint8, uint8, uint8, uint8, uint8, uint8, uint8) {
        uint8 x = 0x0F; // 00001111 in binary
        uint8 y = 0x05; // 00000101 in binary
        uint8 andResult = x & y;
        uint8 orResult = x | y;
        uint8 xorResult = x ^ y;
        uint8 notResult = ~x;
        uint8 leftShiftResult = x << 1;
        uint8 rightShiftResult = x >> 1;
        uint8 zeroFillRightShiftResult = x >> 1;
        return (andResult, orResult, xorResult, notResult, leftShiftResult, rightShiftResult, zeroFillRightShiftResult);
    }
}

