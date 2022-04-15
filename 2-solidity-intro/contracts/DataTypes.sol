// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DataTypes {
  /**
  ** uint
  **    - Non-Negative Un-Signed (0 or greater) Integers. 
  **    - Good for counter.
  **    - 256 bit integer.
  **    - If this is a state variable, you
  **    - have to pay for all that space
  **    - on the blockchain
  **/
  uint x = 9;

  /** 
  * uint8
  *   - 8 bits Non-Negative Un-Signed Integer
  */
  uint8 j = 17;

  /**
  * int
  *   - Integer (can store Negative)
  */
  int i = -68;

  bool isEthereumCool = true;

  /**
   * address
   *    - Ethereum account address
   *
   *  msg.sender
   *    - owner of the smart contract
   */
  address owner = msg.sender;

  /**
  * bytes and string are similar
  * bytes has more operation implementation
  */
  bytes32 bMsg = "hello";
  string sMsg = "hello";

  /**
  *** Solidity Data Modifiers
  ***   public
  ***     - Public Function: anyone can call
  ***     - Public Variable: any app can read from or write to
  ***
  ***   external
  ***     - Only external entities can invoke a function or access a variable
  ***   
  ***   internal
  ***     - Only functions in current smart contract (or any contract derived from it)
  ***       can invoke an internal function
  ***     - Internal variables are only accessible in current smart contract 
  ***       (or any contract derived from it)
  ***
  ***   private
  ***     - Only functions within current smart contract can invoke a private function
  ***     - Private variables can obly be accessed by functions within current smart contract
  ***     - Nothing external can access
  ***     - No derived smart contracts can access
  ***
  ***   view
  ***     - Tells the compiler that the function will only  reference local variables
  ***     - "I'm not touching the blockchain"
  ***     - Saves gas
  ***
  *** Smart Contract Derivations
  ***   - You can write a smart contract as a template
  ***       - Called an "interface"
  ***   - Can write smart contracts based on the template (interface)
  ***       - Derivation of original template smart contract
  ***
  *** Gas
  ***   Gas Price
  ***     - Highest price per unit transaction creator is willing to pay
  ***     - Miners (usually) choose most lucrative transactions
  ***     - Higer gas prices usually mean more complex and longer time to mine
  ***   Gas Limit
  ***     - Total number of gas units a transaction creator is willing to pay
  ***     - Depends on complexity of algorithm
  ***   Gas Cost
  ***     - Every operation in Solidity has a cost
  ***     - Ex: add operation costs 3 gas units
  ***   Transaction Fee
  ***     - Fee to access the blockchain
  ***     - Total cost for computations in a transaction
  ***     - Transaction Fee = Total Gas Cost * Gas Price
  ***   Unused Gas = Gas Budget - Gas Use
  ***     - Goes back to transaction originator
  **/

  function getStateVariables() public view returns (uint, int, uint, bool, address, bytes32, string memory) {
    return (x, i, j, isEthereumCool, owner, bMsg, sMsg);
  }

  function setbMsg(bytes32 newValue) private returns (bytes32) {
    bMsg = newValue;
  }

  /**
  *** Error Handling Functions
  ***   revert()
  ***     - Undoes all state changes
  ***     - Can send return value to caller
  ***         - Informs caller of the function why it failed
  ***     - Refunds remaining gas to the caller
  ***     - Indicates a transaction should be terminated before it's completed
  ***
  ***   assert()
  ***     - Something bad has happened
  ***     - Undoes all state changes
  ***     - Uses all remaining gas
  ***
  ***   require()
  ***     - Checks for requirements before invoking function
  ***     - Undeos state changes
  ***     - Sends return value
  ***     - Refunds all remaining gas
  **/
}