// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

interface managerInterface{
// for creating user enter the address and string .
    function createUser(address addr ,string memory usertype)external;  
     
// for getting the string bound to the address 
//return string.
    function userDetail(address addr) external view returns(string memory);

// for deleting the user input address.
     function deleteUser(address addr) external ; 
}