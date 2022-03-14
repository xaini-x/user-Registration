// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
// like a set of pre defined rule .
//everything in the function you have to implement . 
interface UserStorageInterface{

// for creating user and enter the details 
// enter string only.
    function createUser(  string memory ) external ;

// check if the user is already registered and return value in true or false.
    function isRegistered(address addr) external view returns(bool);
    
//return the length of the array
    function UserLength()external view returns (uint256) ;

//take the registered address and return the binding value of the address . 
// take only address as input.
     function userType(address addr) external view returns (string memory);
}