// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ENUMS {
    enum Status{
        pending,  //0
        accepted, //1
        rejected, //2
        cancelled //3

    }
    Status status;


    function orderStatus() public view returns(Status){
        return status;
    }

    function setStatus(Status _status) public {
        status=_status; 
    }

    function reject() public{
        status=Status.rejected;
    }

    function resetStatus() public{
        delete status; 
    }
}
