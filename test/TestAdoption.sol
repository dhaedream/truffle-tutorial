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



  // Testing the adopt() function
  // We can ensure an ID was returned and that it's correct by 
  // comparing the return value of adopt() to the ID we passed in
  function testUserCanAdoptPet() public {
    uint returnedId = adoption.adopt(expectedPetId);

    Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned.");
   }




  // Since arrays can only return a single value given a single key, 
  // we create our own getter for the entire array.
   // Testing retrieval of all pet owners
function testGetAdopterAddressByPetIdInArray() public {
  // Store adopters in memory rather than contract's storage
  address[16] memory adopters = adoption.getAdopters();

  Assert.equal(adopters[expectedPetId], expectedAdopter, "Owner of the expected pet should be this contract");
}

 
}