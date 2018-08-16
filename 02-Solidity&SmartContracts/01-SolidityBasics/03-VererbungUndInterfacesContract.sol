// Author: M Ben Hajla
// Only for educational purposes

pragma solidity ^0.4.18;


interface Depositor {
   function deposit(uint amount) external;
}



contract DepositBank is Depositor {
    address owner ;
    uint public depositValue ;
    
    function DepositBank() public {
        owner = msg.sender;
    }
    
    function deposit(uint amount) external {
        depositValue += amount;
    }
    
 
}

contract FreindlyDepositBank is DepositBank {

    function deposit(uint amount) external {
        depositValue += amount + (amount * 10 /100) ;  //bonus of 10% to deposit
    }
}


