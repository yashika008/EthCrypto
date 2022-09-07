 //SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.0;
//this is serving purpose of a class

contract Transactions {
    //simple number variable to hold the number of our transactions
   uint256 transactionCount;
//think of it like a function that we are gonna emit or call later on
   //address is a type and from is a variable name
  //address from is going to give the information of dender and receiver unit amount is amount time
   event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

struct TransferStruct{
    address sender;
  address receiever;
  uint amount;
  string message;
  uint256 timestamp;
  string keyword;
}
TransferStruct[] transactions;
//It is important to define the visibility of  a class(public here)
function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public{
transactionCount += 1;
transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
}
//this function returns all transactions in form of an array
function getAllTransactions() public view returns (TransferStruct[] memory) {
return transactions;
}

function getTransactionCount() public view returns(uint256) { 
 return transactionCount;
}
}