// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract STRUCT {
        struct Emp {
            string name;
            uint age;
            address add;
        }

        Emp public emp ;
        //default values 0:
        // string: name
        // 1:
        // uint256: age 0
        // 2:
        // address: add 0x0000000000000000000000000000000000000000


        Emp[] public emps;

        function setEmployeesData() public returns(Emp[] memory){
            Emp memory emp1 = Emp("sam",25,msg.sender); //initialization method1

            Emp memory emp2 = Emp({add:0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db,name:"user1",age:26}); //initialization method 


            emp.name= "user2";
            emp.age=27;
            emp.add=0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;

            emps.push(emp1);
            emps.push(emp2);
            emps.push(emp);

            return emps;
            
        }

}
