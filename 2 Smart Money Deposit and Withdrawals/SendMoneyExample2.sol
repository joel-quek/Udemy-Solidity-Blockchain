// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract SendWithdrawMoney {
    // Mapping to keep track of each address's balance
    mapping(address => uint) public balances;

    // Function to deposit Ether into the contract
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // Function to check the contract balance
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    // Function to withdraw a specific amount of Ether
    function withdraw(uint withdrawAmount) public {
        require(balances[msg.sender] >= withdrawAmount, "Insufficient funds");
        balances[msg.sender] -= withdrawAmount;
        payable(msg.sender).transfer(withdrawAmount);
    }

    // Remove the withdrawAll and withdrawToAddress functions
    // as they allow anyone to withdraw the entire contract balance
}
