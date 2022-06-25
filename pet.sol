// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract pet {
    //we can make a constructor if we want, probably saves gas

    string name;
    address owner;
    string mood;
    uint age;

    constructor (_name, _mood, _age) public {
        name = setName(_name);
        owner = msg.address;
        mood = setMood(_mood);
        age = setAge(_age);
    }

    //setter functions
    function setName(string memory _name) public {
        name = _name;
    }

    function setMood(string memory _mood) public {
        mood = _mood;
    }

    function setAge(uint memory _age) public {
        _age = age;
    }

    //getter function

    function getName() public view returns (string) {
        return name;
    }

    function getMood() public view returns (string) {
        return mood;
    }

    function getAge() internal view returns (uint) {
        return age;
    }

    /* returns the time since last meal */
    function timeSinceLastMeal() internal returns (uint) {
        //needs to be built
        //need to make a way to track the time since last ate
        uint timeSinceLastMeal;
        return timeSinceLastMeal;
    }

    /*isHungry function that returns whether the pet is hungry or not*/
    //can go hungry after 1 day 1 week or so
    //we can make a variable like uint hungerInterval = 1 week
    //more info on time       https://soliditytips.com/articles/solidity-dates-time-operations/
    function isHungry() internal returns (bool) {
        //hunger system needs to be built
        return hunger;
    }

    /*feed function*/
    //feeding system needs to be built
    function feed() {}
}
