// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract A {

    event printA(string _char);

    function print() public virtual returns(string memory){
        emit printA("a");
        return "a called";
    }
}

contract B {

    function print() public virtual returns(string memory){
        return "b called";
    }
}

// contract C is A, B {
//     function print() public view virtual override(A, B) returns (string memory) {
//         // Choose which parent contract's function to call
//          B.print();
         
//     }
// }
contract C is A, B {
    function print() public virtual override(A,B) returns (string memory) {
        emit printA("c event");
        B.print();
        return "c called"; // or B.print();
    }

    function testSuper() public returns(string memory ){
        return super.print();  // will call B print function as B is at deepest level
    }
}
