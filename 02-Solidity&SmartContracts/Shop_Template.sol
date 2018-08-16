pragma solidity ^0.4.23;

contract Shop { 

    
    // add variable to store the owner
    
	
    // define modifier for Owner
	modifier isOwner(){
	    
	}

    // define product struct
	struct Product{
	    string name;
	    uint uid;
	    uint price;
	    uint stock;
	} 

    // Constructor
    constructor () public {
    	// Set owner equals transaction sender
    	
   }

    // add a Map to store all products
    mapping (uint => Product) public products;
   

    // Only owner can add product, Check if Owner
    function addProduct(string _name, uint _uid, uint _price, uint _stock ) public isOwner returns (bool success) {
        
       
    }

    // Anyone can buy product  ( reading and writing to the storage costs )

   function buyProduct(uint _productId)  public payable {
     
            
     }	

      // Owner can withdraw the Money in the contract 
     function withdraw() isOwner public payable{
         address shopAddress = this;
         // Use Transfer 
        
     }	


}
