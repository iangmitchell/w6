pragma solidity ^0.8.20;

contract ex5{
    mapping (uint => uint) public squares;

    function populate() public {
        for(uint i; i<10; i++)
            squares[i] = i*i;
    }
}
