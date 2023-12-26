//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract SampleContract {

    string public myString = "Hello World";

    function updateString(string memory _newString) public payable {

        uint requiredAmount = 1 ether;
        
        require(msg.value >= requiredAmount, "Not enough Ether sent.");

        myString = _newString;

        // Calculate the excess amount to be refunded
        uint excessAmount = msg.value - requiredAmount;

        // If there's any excess amount, refund it to the sender
        if (excessAmount > 0) {
            payable(msg.sender).transfer(excessAmount);
        }
    }
}
