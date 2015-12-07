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
// Take user input (or pre-specify how many players there will be)
// deal each player 5 cards
// play gofish
// shuffle discard and make into draw deck if draw deck is empty
//

// Initial Code
// Constructor Methods

var deck = createDeck();
var player1 = new Player(1);
var player2 = new Player(2);
deck.shuffle();

function Card(value, suit) {
	this.value = value;
	this.suit = suit;

	/**
	 * makes an element
	 * @param  {number} player_num [the number of the player whose card we're making]
	 * @return {element}   returns the div card
	 */
	this.makeElem = function(player_num) {
		var div = document.createElement("div");
		var node = document.createTextNode(this.value);
		div.appendChild(node);
		div.addEventListener("click", pick);
		div.className = "card "+ this.value + " p" + player_num;
		return(div);
	}
}

function Deck(cards) {
	this.cards = cards;
	// Shuffles with Fisher and Yates from wikipedia
	this.shuffle = function() {
		// var marked = Array(deck.length).fill(false);
		for(var i = cards.length; --i > 0;) {
			var rand = Math.floor(Math.random() * i) + 1;
			var temp = cards[i];
			cards[i] = cards[rand];
			cards[rand] = temp;
		}
	}

	/**
	 * takes num_cards out of deck
	 * @param  {number} num_cards number of cards to take out
	 * @return {array of cards}    array of the cards taken out
	 */
	this.deal = function(num_cards) {
		var ret = [];
		while (num_cards-- > 0)
			ret.push(cards.pop());
		return ret;
	}

	/**
	 * draws 1 card
	 * @return {card}
	 */
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

	this.draw = function() {
		var new_card = deck.draw();
		if (this.has(new_card.value)) {
			this.discard(new_card.value);
			console.log("Drew a "+new_card.value);
		}
		else {
			this.cards.push(new_card);
			var div = new_card.makeElem(this.name);
			div.className = "card "+ new_card.value + " ";
			document.body.appendChild(div);
		}
	}

	/**
	 * checks if the player has the given value,
	 * also moves card to front of the deck in case
	 * we need to discard
	 * @param  {string}  value card to check for
	 * @return {Boolean}      
	 */
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

	/**
	 * Discards a given value from current deck, also finds
	 * that object in the DOM and hides it. Relies on has to
	 * switch card to front of the deck
	 * @param  {string} value card characteristic to discard
	 * @return {[type]}       [description]
	 */
	this.discard = function(value) {
		if(this.has(value)){
			this.cards.shift();
			var arr_vals = document.getElementsByClassName(value);
			arr_vals[0].style.display = "none";
			// if (arr_vals.length > 1) arr_vals[1].style.display = "none";
		}
		else throw new Error("Bad discard attempt");
	}

	this.ask = function(player, value) {
		if (player.has(value)) {
			this.discard(value);
			player.discard(value);
			this.score+=2;
		}
		else {
			this.draw();
		}
	}
}

function createDeck() {
	var values = ["1","2","3","4","5","6","7","8","9","A","J","Q","K"];
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

function showHand(player) {
	var hand = player.cards;
	console.log("Function Called")
	for (var i = 0; i < hand.length; i++ ) {
		var div = hand[i].makeElem();
		div.className = "card "+ hand[i].value + " p" + player.name;
		document.body.appendChild(div);
	}
	document.write("<br>");
}

function pick() {
	var name = this.className;
	var active = document.getElementsByClassName("active");
	var notActive = !this.classList.contains("active");
	if (active.length !== 0) {
		active[0].classList.remove("active");	}
	if (notActive) {
		this.classList.add("active");	}
}


function goFish() {
	console.log("pre showHand"+player1)
	showHand(player1);
	showHand(player2);
	console.log(player1.cards);

	    // look for active card
    // if no active card, then alert the user
    // else, take card and see if the other person has the same
    	// if they have the same, take the card away from both players
    	// else add a card to current player
	// switch turns
}


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//