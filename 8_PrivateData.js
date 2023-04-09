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
				"internalType": "bytes32",
				"name": "_password",
				"type": "bytes32"
			}
		],
		"stateMutability": "nonpayable",
		"type": "constructor"
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
				"internalType": "bytes32",
				"name": "_password",
				"type": "bytes32"
			}
		],
		"name": "unlock",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]

let address = "0xeAf2954dc0Ee4f65d3DbA926c41460D2a771B3D2";

async function read(){
     web3.eth.getStorageAt(address,1,console.log) 
}

read()
