// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract variables{
    uint public num; // state variable , stored directly on blockchain , gas fees applied
    uint public num2=1000;


    //global variables   Special variables exists in the global namespace used to get information about the blockchain.
    address public address_1=msg.sender; 

    uint public block_number=block.number ;  //This is a global variable in Solidity that returns the current block number (the number of the block in which the transaction is being processed).

    uint gas_price= tx.gasprice;	//Gas price of the transaction

    address origin= tx.origin;   //the address of the original sender of the transaction. It represents the address that started the transaction, which could be an externally owned account (EOA) or another contract that initiated the call.

    uint256 timestamp = block.timestamp; // Current block timestamp



     uint public original_gas;

 
    constructor(){
        num=100;
        original_gas = gasleft();
    }

    function gasCheckFunction() public {
        // Capture the original gas before any deduction
        original_gas = gasleft();

        uint addition=num+num2;

        // Now check the remaining gas after computations
        uint remaining_gas = gasleft();

        // Do something with the remaining gas
        // For example, emit an event or update a state variable
        emit GasChecked(original_gas, remaining_gas,addition);
    }

    event GasChecked(uint originalGas, uint remainingGas,uint addition);

    function getNum() public returns (string memory) {
        string memory name = "abc";
        num=2000;  //change num to 2000 from 100
        return name;
    }
}
