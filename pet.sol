// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./petContract.sol";


//i suggest we can make it so the frontend will show if the pet is happy
//or sad depending on if it's hungry or not


contract pet {
    
    constructor(string memory _name) {
        name = _name;
        lastMeal = block.timestamp;
        birthday = block.timestamp;
    }

    string name;
    address owner;
    uint birthday;
    uint lastMeal;
    //string mood;

    //setter functions
    function setName(string memory _name) internal {
        name = _name;
    }

/*    function setMood(string memory _mood) internal {
        mood = _mood;
 }*/   


    //getter functions

    function getName() public view returns (string memory) {
        return name;
    }

/*    function getMood() public view returns (string memory) {
       return mood;
   } */

    //returns the age of the pet
    function getAge() internal view returns (uint) {
        return (block.timestamp - birthday);
    }

    /* returns the time since last meal */
    function getTimeSinceLastMeal() internal view returns (uint) {
        return(lastMeal - block.timestamp);
    }

    /*isHungry function that returns whether the pet is hungry or not*/
    //can go hungry after 1 week or whatever specified time
    //more info on time       https://soliditytips.com/articles/solidity-dates-time-operations/
    function isHungry() public view returns (bool) {
        
        bool hunger;
        
        if(block.timestamp >= lastMeal + 1 weeks ){
            hunger = true;
        }
        else{
        }
        return hunger;
    }

    /*feed function*/
    //feeding system needs to be expanded
    function feed() public {
        //need to add more cool stuff, like a charities wallet address
        lastMeal = block.timestamp;
    }
}
