// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Betting {
	/* Standard state variables */
	address public owner;
	address public gamblerA;
	address public gamblerB;
	address public oracle;

	/* Structs are custom data structures with self-defined parameters */
	struct Bet {
		uint outcome;
		uint amount;
		bool initialized;
	}

	/* Keep track of every gambler's bet */
	mapping (address => Bet) bets;
	/* Keep track of every player's winnings (if any) */
	mapping (address => uint) winnings;
	/* Keep track of all outcomes (maps index to numerical outcome) */
	mapping (uint => uint) public outcomes;

	/* Add any events you think are necessary */
	event BetMade(address gambler);
	event BetClosed();

	/* Uh Oh, what are these? */
	modifier OwnerOnly() {_;}
	modifier OracleOnly() {_;}
	modifier OutcomeExists(uint outcome) {_;}

	/* Constructor function, where owner and outcomes are set */
	constructor (uint[] memory _outcomes) {
	}

	/* Owner chooses their trusted Oracle */
	function chooseOracle(address _oracle) public OwnerOnly() returns (address) {
	}

	/* Gamblers place their bets, preferably after calling checkOutcomes */
	function makeBet(uint _outcome) public payable returns (bool) {
	}

	/* The oracle chooses which outcome wins */
	function makeDecision(uint _outcome) OracleOnly() OutcomeExists(_outcome) public {
	}

	/* Allow anyone to withdraw their winnings safely (if they have enough) */
	function withdraw(uint withdrawAmount) public returns (uint remainingBal) {
	}
	
	/* Allow anyone to check the outcomes they can bet on */
	function checkOutcomes(uint outcome) public  view returns (uint) {
	}
	
	/* Allow anyone to check if they won any bets */
	function checkWinnings() public  view returns(uint) {
	}

	/* Call delete() to reset certain state variables. Which ones? That's upto you to decide */
	function contractReset() private {
	}

	/* Fallback function */
	fallback () external payable {
		revert();
	}
}
