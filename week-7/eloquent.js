// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var jack = "JAck"
console.log(jack)



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var loopTriangle = function() {
	var output = "#"
	while(output.length <= 7) {
		console.log(output)
		output += "#"
	}
}

loopTriangle()

// prompt("What's your favorite food?")
// alert("Hey me too!")

// Functions

// Complete the `minimum` exercise.
var min = function(num, ber) {
	if (num < ber) return num;
	else return ber;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Jack",
	age: 23,
	favoriteFood: ["Ravioli", "Fried Chicken", "Jambalaya"],
	quirk: "I don't like bacon, burgers, hot dogs or fries"
}