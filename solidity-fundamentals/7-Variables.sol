// SPDX-License-Identifier: MIT
// compiler version has to be greater than or equal (>=) to 0.8.20 and 
// less than 0.9.0
pragma solidity ^0.8.20;

contract Variables {
    // state variables are contract scope
    string public myStateVariable = "State Variable";

    // local variables are decalred in a function - they are function scoped
    // variables with visibility "restricted" to a function's definition
    function add(uint a) public pure returns (uint) {
        uint localUint = 10;
        return localUint + a;
    }

    // global variables are used to read information from the blockchain
    function globalVariables() public view returns (address, uint, uint) {
        return (msg.sender, block.timestamp, block.number);
    }
}
