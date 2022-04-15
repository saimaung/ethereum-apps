# Blockchain Review
- Consensus controls adding blocks:
  - Trust the process
- Data stays forever
  - Great for auditing
- Actions on the data limited by smart contracts

## Smart Contract Design
- Helps solve real-world problems on the blockchain
  - Ex: supply chain
- Prevents rogue additions
  - All smart contracts must execute the same way on all nodes
  - That includes identical (deterministic) outputs

### Case Study: Supply Chain
What is Supply Chain?
  - The path products and services take from producer to consumer
    - One organization rarely owns all the pieces

### Supply Chain Project
- 2 Smart Contracts
  - 1 smart contract to define token for payments
  - 1 smart contract to defined asset tracking and management

Four functions:
1. Creating new participants
2. Adding new products
3. Transferring product ownership
4. Tracking products

### Solidity Smart Contracts
- Solidity: Programming language for writing Ethereum smart contracts
- Run on all nodes (EVMs)
  - Solidity code is deterministic
  - Runs the same way everywhere, everytime
- Govern how you access the blockchain
- Code is stored on the blockchain
  - Just like data
- Source code must be compiled into bytecode for the EVM to run it
- Handling Data in Solidity
  - Handling blockchain data is different from traditional databases
    - No delete or direct update
    - Only add or read
    - Two types of data: 
      - Local variable (in EVM memory). Not stored between smart contract executions
      - State variables: Stored in blockchain data. Have to pay for that persistence.
    - Types of Memory
      - Stack: Simple variables (like an integer). Lives in local memory in the EVM.
      - Memory: More complex. Lives in other local (EVM) memory (not the stack).
      - Storage: Blockchain data. Must pay money to store on the blockchain.
- Data Types
  - 