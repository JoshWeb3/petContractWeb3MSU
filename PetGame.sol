// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./pet.sol";

/*************************************************/
/* petsGame will act as a client for our game */
/* pet will act as the pet */
/*************************************************/

contract petsGame {
    //array of owners
    owner[] ownerList;

    //address to owner mapping
    mapping(address => owner) public addressToOwner;

    //owner data structure
    struct owner {
        //counter for number of pets
        uint numOfPets;
        //array of pets, will act as list of all the owners pets
        pet[] myPets;
    }

    //we want the setters and getters to:
    // 1. input msg.sender(caller's address) into mappings => to an owner struct,
    // 2. then parse through ownersList array of owner type.
    // 3. get values that way

    //setters
    //set number of pets
    function setNumOfPets(uint newNum) internal {
        addressToOwner[msg.sender].numOfPets = newNum;
    }

    //getters
    //get number of pets
    function getNumOfPets() public view returns (uint) {
        return addressToOwner[msg.sender].numOfPets;
    }

    //create pet function
    function createPet(string memory name) public {
        //creates new pet NFT
        pet newPet = new pet(name); // made constructor for name only -josh

        //push new pet into owners myPets[] array
        addressToOwner[msg.sender].myPets.push(newPet);
        setNumOfPets((getNumOfPets() + 1));
    }
}
