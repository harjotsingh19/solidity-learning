// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PermissionedContract {
    address public owner;
    mapping(address => bool) public admins;
    uint public balance;

    constructor() {
        owner = msg.sender;
        admins[msg.sender] = true;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only owner can call this function");
        _; // this means the actual func calling this modifier will run its code after modifier code
    }

    modifier onlyAdmin {
        require(admins[msg.sender], "Only admins can call this function");
        _;
    }

    function addAdmin(address _admin) public onlyOwner {
        admins[_admin] = true;
    }

    function removeAdmin(address _admin) public onlyOwner {
        admins[_admin] = false;
    }

    function performAdminAction() public onlyAdmin {
        // Code that only admins can execute

        balance+=100;


    }
}

