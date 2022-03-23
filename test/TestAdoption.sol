pragma solidity ^0.5.0;



//assertion checks for equality/ inequality/ emptiness + return a pass/fail
import "truffle/Assert.sol";

// When testing, Truffle will deploy a fresh instance of 
// the contract being tested to the blockchain. 
// This smart contract gets the address of the deployed contract
import "truffle/DeployedAddresses.sol";


import "../contracts/Adoption.sol";

contract TestAdoption {
  // The address of the adoption contract to be tested
  Adoption adoption = Adoption(DeployedAddresses.Adoption());

  // The id of the pet that will be used for testing
  uint expectedPetId = 8;

  // The expected owner of adopted pet is this contract
  // "this" > contract-wide variable that gets the current contract's address
  address expectedAdopter = address(this);






}