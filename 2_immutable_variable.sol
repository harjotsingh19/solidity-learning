// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Immutable {
    address public immutable ADDRESS;
    uint16 public immutable my_num;

    constructor(uint16 num) {
        ADDRESS = msg.sender;
        my_num = num;
    }
}

