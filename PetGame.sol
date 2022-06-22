// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

import "./pet.sol";



contract petsGame {

//array of owners
owners ownerList[];

//address to owner mapping
mapping (address => owner) public addressToOwner;

//owner data structure
struct owner {

    //counter for number of pets
    uint numOfPets;

    //array of pets
    pet myPets[];
	

    //setters
    function setNumOfPets(uint newNum) internal {
        numOfPets = newNum;
    }
    //getters
    function getNumOfPets internal returns (uint) {
        return numOfPets;
    }

    //create pet function
    function createPet(){
        pet newPet = new pet();
    //select owner in ownerList[];
    //push new pet into owners myPets[] array

    }
}
}


