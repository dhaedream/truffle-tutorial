pragma  solidity ^0.5.0;

contract Adoption {
    // declared  adoption variable as an array w 16 items
    address[16] public adopters;
}

// in solidity, data types of paramateers + output must be specified
// in this case they are intergers
function adopt(uint petId) public returns (uint) {

  // to ensure the id integer is in range ( 0 - 15 )
  require(petId >= 0 && petId <= 15);

  // if pet id is in range
  // we add the address that made the call (msg.sender ) to array
  adopters[petId] = msg.sender;

  return petId;
}

// Retrieving the adopters to return entire array
// specify the type for adopters =  address[16] memory
// memory gives the data location for the variable
function getAdopters() public view returns (address[16] memory) {

//   Since adopters is already declared, we can simply return it  
  return adopters;
}
