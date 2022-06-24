// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

import "./pet.sol";


/*************************************************/
/* petsGame will act as a client for our game */
/* pet will act as the pet */
/*************************************************/

contract petsGame {

//array of owners
owners ownerList[];

//address to owner mapping
mapping (address => owner) public addressToOwner;

//owner data structure
struct owner {

    //counter for number of pets
    uint numOfPets;

    //array of pets, will act as list of all the owners pets
    pet myPets[];
	

    //setters
    function setNumOfPets(uint newNum) internal {
        numOfPets = newNum;
    };
    //getters
    function getNumOfPets internal returns (uint) {
        return numOfPets;
    };

    //create pet function
    function createPet(){
        //creates new pet NFT
        pet newPet = new pet(); // we can make a constructor for pet
        
        //push new pet into owners myPets[] array

    };
}
}


