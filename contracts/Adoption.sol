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