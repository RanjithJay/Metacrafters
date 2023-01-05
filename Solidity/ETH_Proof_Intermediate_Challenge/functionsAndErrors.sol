//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract functionsAndErrors{
    address payable owner;

    modifier balanceCheck(uint256 _balance, address _senderAddress){
        if(_balance<1 ether){revert("Low balance!");}
        if(_senderAddress != owner){revert("Only owner can withdraw.");}
        _;
    }

    event infoMessage(uint indexed,string);

    constructor(){
        owner = payable(msg.sender);
    }

    function sendFundsToContract()public payable{}

    function transferFunds(address payable _toAddress) public payable{
        emit infoMessage(msg.value,"is the input received");
        require(msg.value>1 ether,"amount should be grater that 1.");
        assert(4 ether>msg.value);
        bool sendFlag = _toAddress.send(msg.value);
        assert(sendFlag);
    }

    function getBalance() public view returns(uint256){
        if(msg.sender!=owner){
            revert("Owner only can see the contract balance.");
        } 
        return(address(this).balance);
    }

    function withdrawFunds() public payable balanceCheck(address(this).balance,msg.sender){
        owner.transfer(address(this).balance);
    }
}
