//SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract functions{

    address owner;
    address payable public toAddress;

    constructor(){
        owner = msg.sender;
    }

    function getContractOwner() internal view returns(address){
        return msg.sender;
    }

    function square(uint _number) internal pure returns(uint256){
        return _number * _number;
    }

    function receiveETH(address payable _toAddress) public payable{
        _toAddress.transfer(msg.value);
        toAddress = _toAddress;
    }
}
