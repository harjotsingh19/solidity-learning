// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {
    uint[] arrPush;

    function initializeArray(uint length) public {
        arrPush = new uint[](length);
    }

    function pushElement(uint element) public {
        arrPush.push(element);
    }


    function getArrayLength() public view returns (uint) {
        return arrPush.length;
    }

    function getElementAtIndex(uint index) public view returns (uint) {
        require(index < arrPush.length, "Index out of bounds");
        return arrPush[index];
    }

    function getArray() public view returns (uint[] memory) {
        return arrPush;
    }
}
