// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract ScopeExample {
    // Public variable: accessible from outside the contract
    uint public publicVariable = 10;

    // Internal variable: accessible from within the contract and derived contracts
    uint internal internalVariable = 20;

    // Private variable: accessible only from within the contract
    uint private privateVariable = 30;

    // Public function: accessible from outside the contract
    function getPublicVariable() public view returns (uint) {
        return publicVariable;
    }

    // Internal function: accessible from within the contract and derived contracts
    function getInternalVariable() internal view returns (uint) {
        return internalVariable;
    }

    // Private function: accessible only from within the contract
    function getPrivateVariable() private view returns (uint) {
        return privateVariable;
    }

    // Public function that calls internal and private functions
    function getVariables() public view returns (uint, uint, uint) {
        uint publicVar = getPublicVariable(); // Accessible
        uint internalVar = getInternalVariable(); // Accessible
        uint privateVar = getPrivateVariable(); // Accessible

        return (publicVar, internalVar, privateVar);
    }


}


//accessing public variable outside contract
contract publicCheck {
   ScopeExample obj = new ScopeExample();
   function publicCheckFunc() public view returns (uint) {

    uint add = obj.publicVariable() + 10; //accessing public variable
      return add; // public access
   }
}

//internal scope check 
// contract internalCheck {
//    ScopeExample obj = new ScopeExample();
//    function f() public view returns (uint) {
//       return obj.internalVariable(); // internal access gives error 
//    }
// }

// internal scope check using inheritence
contract internalCheck is ScopeExample {
  
   function internalCheckFunc() public view returns (uint) {
      return internalVariable; // internal access gives error 
   }
}


// private variable access check outside contract even derived contract

// contract privateDerived is ScopeExample {
//     function privateDerivedCheck() public view returns (uint){
//         return internalVariable+ privateVariable; //error undeclared privateVariable
//     }
// }


