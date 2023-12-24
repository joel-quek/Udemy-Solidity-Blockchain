// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SimpleMessenger {
    address public deployer;
    string private message;
    uint public updateCounter;

    constructor() {
        deployer = msg.sender;
    }

    function updateMessage(string memory newMessage) public {
        require(msg.sender == deployer, "Only the deployer can update the message.");
        message = newMessage;
        updateCounter++;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
