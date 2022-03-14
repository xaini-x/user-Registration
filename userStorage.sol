// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "./userStorageInterface.sol";


// importing Context from  openzepplin for (msg.sender)
contract UserDetail is  UserStorageInterface {
    struct User {
        string userType;
        address addrs;
    }
    // mapping key to specific value;
    mapping(address => uint256) public index;
    // create a array for storing the struct's value
    User[] public users;

    // first check if the user already registered or not befrore creating a new user .
    function createUser(string memory UserType) public virtual {
        require(index[msg.sender] == 0, "User is registered");
        //  if not registered the user and save the data to struct
        User memory user = User(UserType, msg.sender);
        // push the struct data to array
        users.push(user);
        index[msg.sender] = users.length;
    }

    // function for checking if given address already registered in array.
    function isRegistered(address addr) public view returns (bool) {
        for (uint256 i; i < users.length; i++) {
            //if registered return true.
            if (users[i].addrs == addr) return true;
        }
    }

    // return the length of the array .
    function UserLength() public view returns (uint256) {
        return users.length;
    }

    // checking the value bound with the address .
    function userType(address addr)
        public
        view
        override
        returns (string memory)
    {
        // check if the user is already registered  or not.
        require(index[addr] != 0, "User is not registered");
        // return value from (users)array => (index)mapping => (addr) specific address -1{(array start from 0)}
        return users[index[addr] - 1].userType;
    }
}
