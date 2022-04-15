// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
  string private helloMessage = "Hello World";

  function getHelloMessage() public view returns (string memory) {
    return helloMessage;
  }
}

// truffle compile
// truffle deploy --reset
// reset means starting all over again