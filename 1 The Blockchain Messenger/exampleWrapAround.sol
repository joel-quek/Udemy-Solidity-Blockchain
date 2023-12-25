//SPDX-License-Identifier: MIT

pragma solidity 0.8.15; //wraparound

contract ExampleUint {
    uint256 public myUint;

    uint8 public myUint8=2**4;

    int public myInt;

    function setMyUint(uint _myUint) public{
        myUint=_myUint;
    }

    function setMyUint(int _myInt) public{
        myInt=_myInt;
    }

    function decrementUint() public{
        unchecked{
            myUint--;
        }
    }

    function incrementUint8() public{
        myUint8++;
    }

    function decrementInt() public{
        myInt--;     
    }
}