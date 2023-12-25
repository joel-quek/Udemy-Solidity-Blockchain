//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleStrings{
    string public myString="Hello World";

    bytes public myBytes="Hello World";

    bytes public myBytes2 = unicode"Hello Wörld";

    function setMyString (string memory _myString) public {
        myString=_myString;
    }

    function compareTwoStrings(string memory _myString) public view returns(bool){
        return keccak256(abi.encodePacked(myString))==keccak256 (abi.encodePacked(_myString));
    }

    function getBytesLength() public view returns(uint) {
        return myBytes.length;
    }

    function getStringLength() public view returns (uint) {
        return bytes(myString).length;
    }

    function getBytes2Length() public view returns(uint) {
        return myBytes2.length;
    }
}

// web3.utils.toAscii('0x48656c6c6f2057c3b6726c64')

// web3.utils.toAscii('0x48656c6c6f20576f726c64')