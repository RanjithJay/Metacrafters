//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract ModifierChallenge{

    address owner;
    string ownerName;
    uint256 favoriteNumber;

    constructor(){
        owner = msg.sender;
        ownerName = "Ranjith";
    }

    modifier isAdmin(){
        require(msg.sender==owner,"not a admin");
        _;
    }

    function setFavoriteNumber(uint256 _favoriteNumber) public isAdmin{
        favoriteNumber = _favoriteNumber;
    }

    function getFavoriteNumber() public view isAdmin returns(uint256){
        return favoriteNumber;
    }

    function getAdminName() public view isAdmin returns(string memory){
        return ownerName;
    }
}
