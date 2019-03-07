pragma solidity ^0.5.0;

contract HashBlock
{
	address public OwnerAddress = msg.sender;
	uint public hash;

	modifier OnlyOwner {
		if(msg.sender == OwnerAddress)_;
	}

	function ChangeOwner(address _newOwner) public OnlyOwner
	{
		if(_newOwner == address(0))revert("The new address is null.");
		OwnerAddress = _newOwner;
	}

	function UploadHash(uint _hash) public
	{
		hash = _hash;
	}
	
	function Get() view public returns (uint) {
		return hash;
    }
}
