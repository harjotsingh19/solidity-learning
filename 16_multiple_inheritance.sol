// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// just call vehicleSystem contract


// Contract defining common functionalities for vehicles
contract Vehicle {
    address public owner;
    string public registrationNumber;

    constructor(string memory _registrationNumber) {
        owner = msg.sender;
        registrationNumber = _registrationNumber;
    }

    function transferOwnership(address _newOwner) public {
        require(msg.sender == owner, "Only owner can transfer ownership");
        owner = _newOwner;
    }
}

// Contract defining specific functionalities for cars
contract Car {
    uint public numDoors; //number of doors

    constructor(uint _numDoors) {
        numDoors = _numDoors;
    }

    function honk() public pure returns (string memory) {
        return "Beep Beep!";
    }
}

// Contract defining specific functionalities for motorcycles
contract Motorcycle {
    uint public numWheels;

    constructor(uint _numWheels) {
        numWheels = _numWheels;
    }

    function wheelie() public pure returns (string memory) {
        return "Whee!";
    }
}

// Contract combining functionalities of Vehicle, Car, and Motorcycle using multiple inheritance
contract VehicleSystem is Vehicle, Car, Motorcycle {
    constructor(string memory _registrationNumber, uint _numDoors, uint _numWheels)
        Vehicle(_registrationNumber)
        Car(_numDoors)
        Motorcycle(_numWheels)
    {
        // No additional constructor logic needed
    }
}


