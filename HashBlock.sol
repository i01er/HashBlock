pragma solidity ^0.5.0;

contract HashBlock											//contract name, case sensitive
{
	//address public Owner;
	uint public hash;

	function uploadhash(uint _hash) public					//case sensitive
	{
		hash = _hash;										//Assign the hash
	}
	
	function get() view public returns (uint) {				//get(), return the value
        return hash;
    }
}