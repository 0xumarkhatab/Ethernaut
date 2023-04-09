# Solidity

```solidity 

contract parser{
    function parseU16(bytes32 item)view public returns(bytes16){
        return bytes16(item);
    }
}
// 0xa81dd2e8f1475228f62acd40c9db4b4b
```

# Javascript

```javascript
require("dotenv").config();

let Web3 = require("web3");
let providerUrl = "https://polygon-mumbai.g.alchemy.com/v2/BiDJLH3fER1izb-_kusNyZuTuTzTwwu8";
let web3 = new Web3(providerUrl)

let privKey = process.env.privKey;
// console.log(privKey);
const account = web3.eth.accounts.privateKeyToAccount('0x' + privKey);
web3.eth.accounts.wallet.add(account);
web3.eth.defaultAccount = account.address;


let abi = [
	{
		"inputs": [
			{
				"internalType": "bytes32[3]",
				"name": "_data",
				"type": "bytes32[3]"
			}
		],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "ID",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "locked",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes16",
				"name": "_key",
				"type": "bytes16"
			}
		],
		"name": "unlock",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]

let address = "0x96C75bb5499cb33519534DDa205903a0e7f83eFC";

async function read(){
     web3.eth.getStorageAt(address,5,console.log) 
}

read()


```
