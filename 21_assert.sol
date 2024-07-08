// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertExample {
    uint public balance;

    function deposit(uint _amount) public {
        // Ensure that the amount to be deposited is non-zero
        assert(_amount > 0);

        // Add the deposited amount to the balance
        balance += _amount;
    }

    function withdraw(uint _amount) public {
        // Ensure that the amount to be withdrawn does not exceed the current balance
        assert(_amount <= balance);

        // Subtract the withdrawn amount from the balance
        balance -= _amount;
    }
}

