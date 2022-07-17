// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import ERC20 contract from openzepplin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
 contract LearnWeb3Token is ERC20 { //inheritance

     //A contructor is a function called when the contract is deployed 
     //we also want to call the contructor inside of ERC20
     constructor(string memory _name, string memory _symbol) 
     ERC20 (_name, _symbol)//means run the contructor inside erc20
       {

         //This is our contract
         //Get some tokens for ourselves
         //msg.sender is the persion deploying the contract
         _mint(msg.sender, 1000 * (10 ** 18)); //to get 1000 tokens *solidity does not support floting point numbers
        }
        function mint() public{
                _mint(msg.sender, 1000 * (10 ** 18));
            }
     
 }