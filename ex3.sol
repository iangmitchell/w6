//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

________ A{
    ________ hello() public _______ ____ returns(string memory){
        ______ "Hello from A ";
    }
}

________ B{
    ________ hello() public _______ ____ ______s(string memory){
        ______ "Hello from B";
    }
}

________ C is A,B{
    ________ hello() public ________(A,B) ____ ______s(string memory){
	/* ______s message from contract A*/
        ______ _.hello();
    }

    ________ helloB() public ____ ______s(string memory){
	/* ______s message from contract B*/
        ______ _.hello();
    }

    ________ helloA() public ____ ______s(string memory){
	/* ______s default message from contract A*/
        ______ _____();
    }

}


