//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract memoryAndStorage{
    address owner; // storage variable

    constructor (){
        owner = msg.sender;
    }

    // argument _newOwner is the memory variable
    function changeOwner(address _newOwner) public {
        owner = _newOwner;
    }

    function getCurrentOwner() public view returns(address){
        return owner;
    }
}
