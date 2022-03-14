// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "./managerInterface.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract Manager is managerInterface , Ownable{
    mapping(address => string) private index;

// for creating user 
    function createUser(address addr ,string memory usertype)public onlyOwner {
        // using mapping to map address to the string.
  
        index[addr] = usertype;
    }

// for getting the detail.
    function userDetail(address addr) public view returns(string memory){
       //return the string bound to the address
        return index[addr];
    }

// for deleting user
    function deleteUser(address addr) public onlyOwner{
        // delete the given address .
        delete index[addr];
    }

}