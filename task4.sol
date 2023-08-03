// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract ChickenFarm {
    struct Chicken {
        uint256 id;
        string name;
    }

    mapping(uint256 => Chicken) chickens;
    uint256 public chickenCounter;

    function checkStatus() public pure returns (string memory) {
        // Return a message that checks whether the farm is working or not.
        return "The farm is working.";
    }

    function addChicken(string memory name) public {
        // This function is going to add our new chickens to the Chicken struct.
        chickenCounter++;
        chickens[chickenCounter] = Chicken(chickenCounter, name);
    }

    function getChicken(uint256 id) public view returns (uint256, string memory) {
        // Create getChicken function which takes the ID of the chicken and returns the chicken's ID and its name
        return (chickens[id].id, chickens[id].name);
    }
}