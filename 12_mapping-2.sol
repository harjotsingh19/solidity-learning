// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

struct donor {
    string name;
    uint age;
    uint don;
}

contract advMapping{
    mapping (address=>donor) public acc_info;

    // only show current donation
    function set_Ids(string memory _name,uint _age,uint _don) public {
        acc_info[msg.sender]=donor({name:_name,don:_don,age:_age});         
    }


    // to add previous donation
    function addPreviousDonation(string memory _name,uint _age,uint _don) public {
        acc_info[msg.sender]=donor({name:_name,don:acc_info[msg.sender].don+_don,age:_age});         
    }

    // function getId(uint _acc_id) public view returns(string memory){

    //     return acc_info[_acc_id];
    // }
   

}
