//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract globalFunction{

    event sendStatus(string indexed);

    function getContractBalance() public view returns(uint256){
        return address(this).balance;
    }

    function transferWei(address payable _toAddress,uint256 _amount) public payable{
        _toAddress.transfer(_amount);
    }

    function SendWei(address payable _toAddress,uint256 _amount) public payable {
        bool sendFlag = _toAddress.send(_amount);
        if(sendFlag){
            emit sendStatus("Send operation completed.");
        }
        else{
            emit sendStatus("Send failed");
        }
    }

    function getBlockDetails() public view returns(address,uint256,uint256,uint256,uint256){
        return (block.coinbase,block.difficulty,block.timestamp,block.gaslimit,block.number);
    }

    function getTransactionDetails() public view returns(uint256,address){
        return(tx.gasprice,tx.origin);
    }

    function getMessageDetails() public payable returns(uint256,address,uint256){
        return(msg.value,msg.sender,gasleft());
    }

}
