// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Base contract with a function that can be overridden
contract Parent {
    function greet() public virtual returns (string memory) {
        return "Hello from Parent";
    }
}

// First child contract overriding the greet function
contract Child1 is Parent {
    function greet() public virtual override returns (string memory) {
        return "Hello from Child1";
    }
}

// Second child contract overriding the greet function
contract Child2 is Parent {
    function greet() public virtual override returns (string memory) {
        return "Hello from Child2";
    }
}

// Usage example
contract Greeting {
    Parent public parent;
    Child1 public child1;
    Child2 public child2;

    constructor() {
        parent = new Parent();
        child1 = new Child1();
        child2 = new Child2();
    }
}

