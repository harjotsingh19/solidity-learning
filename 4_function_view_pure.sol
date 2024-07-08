// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//view function
contract Test {
    uint a =1;
   function getResult() public view returns(uint product, uint sum){
     // local variable
      uint b = 2;
      product = a * b;  // ony reading value of a not modifying it so view
      sum = a + b; 
   }

    function getResult2() public pure returns(uint){
     // local variable
      uint b = 2;
      return b; 
   }

}
