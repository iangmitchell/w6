//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract ex4{
    function test() public view returns(uint, uint16, uint32) {
    int  y = -2;
    uint x = uint(y);
    uint32 a = 0x12345678; 
    uint16 b = uint16(a);  
    uint16 d = 0xFFFF; 
    uint32 e = d; 	
    assert (d==e);
    return (x, b, e);
    }
		  
}
