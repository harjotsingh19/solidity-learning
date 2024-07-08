// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleEventExample {
    event ItemAdded(address sender, string itemName, uint256 quantity);

    mapping(address => uint256) public inventory;

    function addItem(string memory _itemName, uint256 _quantity) public {
        inventory[msg.sender] += _quantity;
        emit ItemAdded(msg.sender, _itemName, _quantity);
    }
}

