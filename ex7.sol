//SPDX-License-Identifier: GPL2.0
pragma solidity >=0.8.0<=0.8.19;
contract account{
    _______ (address __ uint) accountBalance;

    event sentMsg( address, address, uint, bool);
    event transferMsg( address, address, uint, string);
    
    function setAccount() public {
        accountBalance[__________] = msg.sender.balance;
    }

    function setAccount(address _account) public {
        accountBalance[_account] = ________.balance;
    }

    function getAddress() public ____ returns(address){
        return msg.sender;
    }

    function getBalance() public ____ returns(uint){
        return (accountBalance[msg.sender]);
    }

    function getBalanace(address _account) public ____ returns(uint){
        return (______________[________]);
    }

    function sendEther (address _______ _to) public _______ {
        bool sent;
        uint amount = ___._____;
        if (amount < accountBalance[___.______]) {
            sent = ___.send(amount);
            if (sent){
                accountBalance[___.______]-=amount;
                accountBalance[___]+=amount;
            }
        }
        emit sentMsg(___.______, _to, amount, sent);
    }

    function transferEther(address _______ _to) public _______ {
        uint amount = ___._____;
        string memory eventMsg = "Transferred Failed";
        if (amount < accountBalance[___.______]) {
            ___.transfer(amount);
            accountBalance[___.______]-=amount;
            accountBalance[___]+=amount;
            eventMsg = "Transfer Completed";
        }
        emit transferMsg(___.______, _to, amount, eventMsg);
    }
}
