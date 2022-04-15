# New Project Development Workflow

## 1. Initializing Project
--------------------
Pre-Requisites:
1. `Truffle`: Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier. https://trufflesuite.com/truffle/
2. `Ganache`: One Click Blockchain (https://trufflesuite.com/ganache/index.html)
3. Create a new directory and RUN `truffle init` in the new project directory
4. Un-comment and edit `developments` node inside `truffle-config.js` to point to `Ganache` 


## 2. Writing A Smart Contract
------------------------------
Pre-Requisites:
1. Install `Solidity` extension via Visual Studio Code
   
Background Knowledges:
- Have to pay a fee everytime you access blockchain data
- Blockchain data is immutable
- Data stored on the blockchain is available to everyone

1. Write contract in `contracts` folder
2. Compile contract: `truffle compile`
3. Add new contract under migrations js file for deployment
4. Deploy contract to local Ganache Block Chain: `truffle deploy --reset`
5. To invoke/running contract code (free of charge) that was deployed to Block Chain: `truffle console`
   1. `HelloWorld.deployed().then(function(instance){return instance});` - Asking where HelloWorld contract was deployed to, return the pointer to the instance if found. In the response json, the byte code is the actual compiled code (input to EVM).
   2. invoking actual function: `HelloWorld.deployed().then(function(instance){return instance.getHelloMessage()});`