// Author: M Ben Hajla
// Only for educational purposes

pragma solidity ^0.4.18;

contract EventLoggingContract {
    
    event testEvent();
    event fallBackCalledEvent(address);
    event balanceChangedEvent(uint);
    event sendAssetsCalledEvent(address from, address to, uint amount);

  	//FallBack Method	
   function () payable public  {
        
        emit testEvent(); 
        emit fallBackCalledEvent(msg.sender);
        emit balanceChangedEvent(msg.value);
    }
  
  
	function sendAssets(address receiver, uint amount) public {
        
		// Some logic
        //trigger Event
        emit sendAssetsCalledEvent(msg.sender, receiver, amount);
    }
    
}

