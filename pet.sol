// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract pet {
    string name;
    address owner;
    string mood;
    uint age;

    //setter functions
    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string) {
        return name;
    }

    function setMood(string memory _mood) public {
        mood = _mood;
    }

    //getter function
    function getMood() public view returns (string) {
        return mood;
    }

    function getAge() internal view returns (uint) {
        return age;
    }

    //feed function
    function feed() {}
}
