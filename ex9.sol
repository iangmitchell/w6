//SPDX-License-Identifier:MIT
pragma solidity <=0.8.18;

contract dis{
    event display(string);
}

contract FB is dis{
    fallback() external payable{
        emit display("Fallback");
    }
}

contract RE is dis{
    receive() external payable{
        emit display("Receive" );
    }
	
	fallback() external payable{
		emit display("Fallback");
	}

	function withdraw(uint _amount) public payable {
		payable (msg.sender).transfer(_amount);
	}	
}

contract test{
    event log(bool, bytes);
    function Transfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }
    function Send(address payable _to) public payable {
        bool sent = _to.send(msg.value);
    }
    function Call(address payable _to) public payable {
        (bool sent, bytes memory value) = _to.call{value: msg.value}(abi.encodeWithSignature("doesNotExist()"));
        emit log(sent, value);
    }
	function CallReceive(address payable _to) public payable {
		(bool sent, bytes memory value) = _to.call{value: msg.value}("");
		emit log(sent, value);
	}
}
