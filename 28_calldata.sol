// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImmutableContract {
    uint immutable constantValue; //12807 gas

    constructor(uint _value) {
        constantValue = _value; 
    }
}

contract ConstantContract {
    uint constant constantValue = 100;  //12464 gas

}

