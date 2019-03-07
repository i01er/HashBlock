pragma solidity ^0.5.0;

contract HashBlock
{
	address public OwnerAddress = msg.sender;								//Set the contract owner when deploy
	uint public hash;

	modifier OnlyOwner {
		if(msg.sender == OwnerAddress)_;									//Only The contract owner
	}

	function ChangeOwner(address _newOwner) public OnlyOwner				//Transfer the ownership to other address
	{
		if(_newOwner == address(0))revert("The new address is null.");		//Check the address is not null(0x0)
		OwnerAddress = _newOwner;
	}

	function UploadHash(uint _hash) public									//Upload the hash
	{
		hash = _hash;
	}
	
	function Get() view public returns (uint) {								//View the hash by calling this function, callback do not need gas
		return hash;
    }
}