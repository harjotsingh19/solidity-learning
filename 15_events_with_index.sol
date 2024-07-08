// Imagine you have a contract that tracks the temperature of different cities. Whenever the temperature of a city is updated, it emits an event with the city name and the new temperature. Now, let's say you want to allow users to filter events by city name.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TemperatureTracker {
    // Define an event to track temperature updates
    event TemperatureUpdated(address indexed updater, string city, uint256 temperature);

    // Mapping to store the temperature of each city
    mapping(string => uint256) public temperatures;

    // Function to update the temperature of a city
    function updateTemperature(string memory _city, uint256 _temperature) public {
        temperatures[_city] = _temperature;
        
        // Emit an event to notify listeners about the temperature update
        emit TemperatureUpdated(msg.sender, _city, _temperature);
    }
    
    // Function to get filtered events by city name
    function getFilteredEvents(string memory _city) public view returns (uint256) {
        // Return the temperature of the specified city
        return temperatures[_city];
    }
}

