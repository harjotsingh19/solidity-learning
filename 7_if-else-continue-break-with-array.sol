// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arrayExample {

    uint[] arr;

    function dynamicArray() public{
         arr = new uint[](5);  

        for(uint i=0;i<10;i++){
        
            if(i==2){
                arr.push(6);
                arr.push(7);
                continue;
                 
            
            }else if(i==4){
               
                break;
            }
            arr[i]=i;
        }

       
    }

    function showArray() public view returns(uint[] memory){

        return arr;
    }

     function showArray2() public returns(uint[] memory){
        arr.pop();
        return arr;
    }


   


}    