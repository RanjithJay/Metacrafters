//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract events{
    uint256 Input01;
    uint256 Input02;
    uint256 Input03;

    event valueOfInput01(uint256 indexed _input01);
    event valueOfInput02(uint256 indexed _input02);
    event valueOfInput03(uint256 indexed _input03);
    event greatestNumber(uint256 indexed _gratestNumber, string _message);

    function setValues(uint _input01, uint _input02, uint _input03) public {
        (Input01,Input02,Input03) = (_input01,_input02,_input03);
        emit valueOfInput01(Input01);
        emit valueOfInput02(Input02);
        emit valueOfInput03(Input03);
    }

    function findGratestNumber() public payable{
        if ((Input01 > Input02) && (Input01 > Input03)){
            emit greatestNumber(Input01, "Input01 is the gratest!");
        }
        else if ((Input02 > Input03 ) && (Input02 > Input01)){
            emit greatestNumber(Input02, "Input02 is the gratest!");
        }
        else {
            emit greatestNumber(Input03, "Input03 is the gratest!");
        }
    }
    
}