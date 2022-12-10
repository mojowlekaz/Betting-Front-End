//SPDX-License-Identifier

pragma solidity ^0.8.4;
import "./Mytoken.sol";


contract Betting{
   MyToken public MTN;
   address public owner = msg.sender;


   constructor(MyToken _MTN) public{
       MTN = _MTN;
       owner == msg.sender;
   }

   modifier onlyowner(){
       require(msg.sender == owner, "You are not the owner");
   _;
   }

   string[] public Betterscomments;
   address[] public Betters;
   address[] public Betters2;
   address[] public Betters4;

   mapping(address=>uint256) public   Bettingbalance;
   uint256 public TotalBet;

    mapping(address => bool) public hasBet;
    mapping(address => bool) public isBetting;

   function Bet(uint256 amount) public payable{
       require(amount == 10000, "You don't have enough Token");
       MTN.transferFrom(msg.sender, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB, 10000 );
       TotalBet = TotalBet+ amount;
       Bettingbalance[msg.sender] =Bettingbalance[msg.sender] + amount;
       if(!hasBet[msg.sender]){
       Betters.push(payable(msg.sender));
       }
          //updating staking status
        hasBet[msg.sender] = true;
        isBetting[msg.sender] = true;    
   }

   function distributeReward1() public payable onlyowner{
     for (uint256 i = 0; i < Betters.length; i++) {
            address recipient = Betters[i];
                MTN.transfer(recipient, 20000);
            }
            // Betters = new address payable[](0);

   }


   function Bet2(uint256 amount) public payable{
       require(amount == 20000, "You don't have enough Token");
       MTN.transferFrom(msg.sender, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB, 20000 );
       TotalBet = TotalBet+ amount;
       Bettingbalance[msg.sender] =Bettingbalance[msg.sender] + amount;
       if(!hasBet[msg.sender]){
       Betters2.push(payable(msg.sender));
       }
          //updating staking status
        hasBet[msg.sender] = true;
        isBetting[msg.sender] = true;    
   }

   function distributeReward2() public payable onlyowner{
     for (uint256 i = 0; i < Betters.length; i++) {
            address recipient = Betters2[i];
                MTN.transfer(recipient, 40000);
            }
            // Betters = new address payable[](0);

   }

   function Bet3(uint256 amount) public payable{
       require(amount == 40000, "You don't have enough Token");
       MTN.transferFrom(msg.sender, 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB, 40000 );
       TotalBet = TotalBet+ amount;
       Bettingbalance[msg.sender] =Bettingbalance[msg.sender] + amount;
       if(!hasBet[msg.sender]){
       Betters4.push(payable(msg.sender));
       }
          //updating staking status
        hasBet[msg.sender] = true;
        isBetting[msg.sender] = true;    
   }

   function distributeReward3() public payable onlyowner{
     for (uint256 i = 0; i < Betters.length; i++) {
            address recipient = Betters4[i];
                MTN.transfer(recipient, 80000);
            }
            // Betters = new address payable[](0);

   }


   function AddComment(string memory comments) public returns(string[] memory) {
       Betterscomments.push(comments);
   }

    function getComments() public view returns(string[] memory){
        return Betterscomments;
    }
}