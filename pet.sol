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

    /* returns the time since last meal */
    function timeSinceLastMeal() internal returns (uint) {
        uint timeSinceLastMeal;

        return timeSinceLastMeal;
    }

    /*isHungry function that returns whether the pet is hungry or not*/
    function isHungry() internal returns (bool) {
        return hunger;
    }

    /*feed function*/
    function feed() {}
}
