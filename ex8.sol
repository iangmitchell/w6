//SPDX-License-Identifier:MIT
pragma solidity >=0.8.0<=0.8.19;

_________ SimpleToken{
	________ createAccount(address _account) ________; 
	________ freezeAccount(address _account) ________;
	________ isFrozen(address _account) ________ returns(bool);
	________ transfer(address _to, uint amount) ________;
}

contract MDXToken is SimpleToken{
	_______ (address => uint) public balanceMap;
	_______ (address => bool) public freezeMap;
	uint ___stant MAX_LIMIT = 1000000000; //mdx-wei

	event Transfer(address, uint);
	
	________ createAccount (_______ _account) public {
		balanceMap[_account] = MAX_LIMIT;
		freezeMap[_account] = false;
	}

	________ transfer(_______ _to, uint _amount) public {
		if (!isFrozen(_to)){
			balanceMap[msg.sender]-= _amount;
			balanceMap[_to]+=_amount;
		}
		emit Transfer(_to, _amount);
	}

	________ freezeAccount(_______ _account) public{
		freezeMap[_account] = ____;
	}

	________ unfreezeAccount(_______ _account) public {
		freezeMap[_account] = _____;
	}

	________ isFrozen(_______ _account) public returns(bool){
		return freezeMap[_account];
	}
}
