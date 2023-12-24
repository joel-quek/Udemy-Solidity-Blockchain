//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleUint {
    uint256 public myUint;

    uint8 public myUint8=2**2;

    int public myInt=-10;

    function setMyUint(uint _myUint) public{
        myUint=_myUint;
    }

    function myincrementUint8() public{
        myUint8++;
    
    }

    function myincrementInt() public{
        myInt++;
    }

    function mydecrementInt() public{
        myInt--;
    }
}