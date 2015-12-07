 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:

// Overall mission: I want to start with a game of "Go-Fish!" but eventually implement Euchre

// Goals: Each player wants to get rid of all their cards
// 			to lose a card you must correctly guess who has a pair for your card
// 			if you guess wrong you must draw a new card

// Characters: 2-7 players

// Objects: players, the deck of cards --> the draw deck, discarded cards

// Functions:
// initialize game for x players
// shuffle function
// discard
// deal cards to 1 player, works as draw too
// a gofish function to ask about a certain card

// Pseudocode
// deal each player 5 cards
// if any player has pairs in their given hand they should discard
// and add to their score
// the first player asks the second player if they have a card
// 	IF they have the card, they give the card to player1 and they ask again
// 	Else player1 draws and the turn switches
// The first player to lose all their cards wins

// Initial Code
// Constructor Methods

// var deck = createDeck();
// deck.shuffle();
// var player1 = new Player("player1");
// var player2 = new Player("player2");

// function initialize() {
	
// }

// function Card(value, suit) {
// 	this.value = value;
// 	this.suit = suit;
// }

// function Deck(cards) {
// 	this.cards = cards;
// 	// Shuffles with Fisher and Yates from wikipedia
// 	this.shuffle = function() {
// 		for(var i = cards.length; --i > 0;) {
// 			var rand = Math.floor(Math.random() * i) + 1;
// 			var temp = cards[i];
// 			cards[i] = cards[rand];
// 			cards[rand] = temp;
// 		}
// 	}

// 	this.deal = function(num_cards) {
// 		var ret = [];
// 		while (num_cards-- > 0)
// 			ret.push(cards.pop());
// 		return ret;
// 	}

// 	this.draw = function() {
// 		var ret = this.deal(1);
// 		return ret[0];
// 	}

// 	this.add = function(card) {
// 		cards.push(card);
// 	}
// }

// function Player(name) {
// 	this.cards = deck.deal(5);
// 	this.score = 0;
// 	this.name = name;

// 	this.printCards = function() {
// 		console.log(name +"'s score:" + this.score);
// 		console.log();
// 		console.log(name +"'s cards:")
// 		for (var i = 0; i < this.cards.length; i++) {
// 			console.log(this.cards[i].value);
// 		}
// 	}

// 	this.discard = function(value) {
// 		if(this.has(value)){
// 			this.cards.shift();
// 			if (this.cards.length == 0)
// 				console.log(this.name+" wins!!!");
// 			else this.printCards();
// 		}
// 		else throw new Error("Bad discard attempt");
// 	}

// 	this.has = function(value) {
// 		var cards = this.cards;
// 		for (var i = 0; i < cards.length; i++) {
// 			if(cards[i].value == value){
// 				var temp = cards[i];
// 				cards[i] = cards[0];
// 				cards[0] = temp;
// 				return true;
// 			}
// 		}
// 	}
	
// 	for (var i = 0; i < this.cards.length; i++) {
// 		var curr = this.cards[i];
// 		for (var j = 0; j < this.cards.length; j++) {
// 			if (i != j && curr.value == this.cards[j].value) {
// 				this.discard(curr.value);
// 				this.discard(curr.value);
// 				this.score+=2;
// 			}
// 		}
// 	}

// 	this.draw = function() {
// 		var new_card = deck.draw();
// 		console.log("Drew a "+new_card.value);
// 		if (this.has(new_card.value)) {
// 			this.discard(new_card.value);
// 		}
// 		else {
// 			this.cards.push(new_card);
// 		}
// 		this.printCards();
// 	}

// 	this.ask = function(player, value) {
// 		if (player.has(value)) {
// 			console.log(player.name + " has "+ value +"!!");
// 			player.discard(value);
// 			this.discard(value);
// 			this.score+=2;
// 		}
// 		else {
// 			console.log("Go Fish!");
// 			this.draw();
// 			this.endTurn(player);
// 		}
// 	}

// 	this.endTurn = function(player) {
// 		this.input.className ="offturn";
// 		this.button.className ="offturn";
// 		player.input.className = "";
// 		player.button.className = "";
// 		player.printCards();
// 	}

// }

// function createDeck() {
// 	var values = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"];
// 	var suits = ["Spades", "Clubs", "Diamonds", "Hearts"];
// 	var all_cards = [];
// 	for (var i = 0; i < suits.length; i++) {
// 		for (var j = 0; j < values.length; j++) {
// 			var card = new Card(values[j], suits[i]);
// 			all_cards.push(card);
// 		}
// 	}
// 	return new Deck(all_cards);
// }

// function pickP1() {
// 	var text = document.getElementById('input1').value;
// 	console.log(text);
// 	if (player1.has(text)) { 
// 		player1.ask(player2, text);
// 	}
// 	else {
// 		console.log("You don't have that card!");
// 	}
// }

// function pickP2() {
// 	var text = document.getElementById('input2').value;
// 	console.log(text);
// 	if (player2.has(text)) { 
// 		player2.ask(player1, text);
// 	}
// 	else {
// 		console.log("You don't have that card!");
// 	}
// }

// Refactored Code

var deck = createDeck();
deck.shuffle();
var player1 = new Player("player1");
var player2 = new Player("player2");

function Card(value, suit) {
	this.value = value;
	this.suit = suit;
}

function Deck(cards) {
	this.cards = cards;
	// Shuffles with Fisher and Yates from wikipedia
	this.shuffle = function() {
		for(var i = cards.length; --i > 0;) {
			var rand = Math.floor(Math.random() * i) + 1;
			var temp = cards[i];
			cards[i] = cards[rand];
			cards[rand] = temp;
		}
	}

	this.deal = function(num_cards) {
		var ret = [];
		while (num_cards-- > 0)
			ret.push(cards.pop());
		return ret;
	}

	this.draw = function() {
		var ret = this.deal(1);
		return ret[0];
	}

	this.add = function(card) {
		cards.push(card);
	}
}

function Player(name) {
	this.cards = deck.deal(5);
	this.score = 0;
	this.name = name;
	this.input

	this.printCards = function() {
		console.log(name +"'s score:" + this.score);
		console.log();
		console.log(name +"'s cards:")
		for (var i = 0; i < this.cards.length; i++) {
			console.log(this.cards[i].value);
		}
	}

	this.discard = function(value) {
		if(this.has(value)){
			this.cards.shift();
			if (this.cards.length == 0) {
				this.win();
			}
			// else this.printCards();
		}
		else throw new Error("Bad discard attempt");
	}

	this.has = function(value) {
		var cards = this.cards;
		for (var i = 0; i < cards.length; i++) {
			if(cards[i].value == value){
				var temp = cards[i];
				cards[i] = cards[0];
				cards[0] = temp;
				return true;
			}
		}
	}

	this.win = function() {
		document.write(this.name + " wins~~!!!!!");
	}
	
	// Checks for duplicate values on construction
	for (var i = 0; i < this.cards.length; i++) {
		var curr = this.cards[i];
		for (var j = 0; j < this.cards.length; j++) {
			if (i != j && curr.value == this.cards[j].value) {
				this.discard(curr.value);
				this.discard(curr.value);
				this.score+=2;
			}
		}
	}

	this.draw = function() {
		var new_card = deck.draw();
		console.log("Drew a "+new_card.value);
		if (this.has(new_card.value)) {
			this.discard(new_card.value);
			this.score+=2;
		}
		else {
			this.cards.push(new_card);
		}
		// this.printCards();
	}

	this.ask = function(player) {
		var value = this.input.value;
		if (player.has(value)) {
			console.log(player.name + " has "+ value +"!!");
			this.score+=2;
			player.discard(value);
			this.discard(value);
			this.printCards();
		}
		else {
			console.log("Go Fish!");
			this.draw();
			this.endTurn(player);
		}
	}

	this.endTurn = function(player) {
		this.div.className ="hidden";
		player.div.className = "";
		player.printCards();
	}

}

function createDeck() {
	var values = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"];
	var suits = ["Spades", "Clubs", "Diamonds", "Hearts"];
	var all_cards = [];
	for (var i = 0; i < suits.length; i++) {
		for (var j = 0; j < values.length; j++) {
			var card = new Card(values[j], suits[i]);
			all_cards.push(card);
		}
	}
	return new Deck(all_cards);
}




// Reflection
//
//What was the most difficult part of this challenge?
//	That's a toughy, this was easily the hardest challenge I thought. I spent a lot
//	of time going straight for the DOM since it's somewhat difficult to get input 
//	without accessing the document. It made it really hard to implement the very basic
//	logic of go fish. So I switched to printing to the console, and it's now pretty
//	evident where areas for improvement are.
//
// What did you learn about creating objects and functions that interact with one another?
// 	Pseudocoding is super important! I was very vague in my pseudocoding because I thought
// 	this would be really easy and simple. My first implementation required a while loop that
// 	terminates when someone wins, but it didn't seem like that would work in javascript. Not
// 	only was my pseudo too vague, but it was language specific and I really paid for it!
// 	
// Did you learn about any new built-in methods you could use in your refactored solution? 
// If so, what were they and how do they work?
// 	No, I was checking for built in methods while doing the original code and I didn't find
// 	anything that would be helpful. I guess I could have made some for each loops, but I don't
// 	think they look any better. Most of my refactoring went into making the game more intuitive
// 	and fixing how my javascript interacted with the DOM, although I'm still unsatisfied.
// 
// How can you access and manipulate properties of objects?
//	You basically search through the documnet for certain objects. Since each id can only be
//	associated with 1 element, you can get one element using ids, otherwise with classes you
//	get a list of matches from the document. Once you have an element in javascript, you can
//	treat it like a node on a tree and you can access its parents or children. This is why
//	indenting is important, it can make this process much easier to figure out.
//
//
//
//
//