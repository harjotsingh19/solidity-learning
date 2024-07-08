// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VisibilityExample {
    // State variables with different visibilities
    uint public publicNumber = 10; // Public state variable
    uint private privateNumber = 20; // Private state variable
    uint internal internalNumber = 30; // Internal state variable
    uint externalNumber = 40; // This is not a visibility modifier, but declared as external later

    // Functions with different visibilities

    // Public function: Accessible internally and externally
    function incrementPublic() public {
        publicNumber++;
    }

    // Private function: Accessible only internally
    function incrementPrivate() private {
        privateNumber++;
    }

    // Internal function: Accessible internally and from derived contracts
    function incrementInternal() internal {
        internalNumber++;
    }

    // External function: Accessible only externally
    function incrementExternal() external {
        externalNumber++;
    }

    // Public function to access private state variable
    function getPrivateNumber() public view returns (uint) {
        return privateNumber;
    }

    // Internal function to access external state variable
    function getExternalNumber() internal view returns (uint) {
        return externalNumber;
    }

    // External function to access internal state variable
    function getInternalNumber() external view returns (uint) {
        return internalNumber;
    }
}

