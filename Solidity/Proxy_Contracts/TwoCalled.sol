// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// NOTE: Deploy this contract first
contract Twocalled {
    // NOTE: storage layout must be the same as contract oneCall
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num+1000;
        sender = msg.sender;
        value = msg.value;
    }
}

