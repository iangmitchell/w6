pragma solidity ^0.8.28;
______ "./strings.sol";

________ ex5{
    ____g strings for *;
    string public firstName="Ian";
    string public lastName="Mitchell";
    bytes32 public xName;
    function convertStringToBytes() public returns(_______){
        xName = bytes32(bytes(firstName));
        return( xName);
    }

    function convertBytesToAsciiString() public returns(string _____y){
        string ______ _temp = string(abi.encodePacked(xName));
        return _temp;
    }

    function concatStr() public returns(string ______){
        string ______ _fullName = firstName.toSlice().concat(lastName.toSlice());
        return _fullName;
    }

    function length() public returns (uint){
        return firstName.toSlice().len();
    }
}

