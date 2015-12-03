 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up

/* pseudocode 

input: array of athletes
output: add a win property (no return value)
iterate over array
  add win property

*/

function addWin(array) {
  for (var i = 0; i < array.length; i++) {
    array[i].win = function() {
      console.log(this.name + " won the " + this.event);
    };
  }
};

var sarah = {
  name: "Sarah",
  event: "Ladies Singles"
}

var bill = {
  name: "Bill",
  event: "Men's bobsledding"
}

var arr = [sarah, bill];
addWin(arr);
arr[0].win();
arr[1].win();



// Jumble your words

function reverse(string) { 
  return string.split("").reverse().join("");
}

console.log(reverse("Hello"))
console.log(reverse("Dev Bootcamp"))

// 2,4,6,8

function even(numbers) {
  var ret = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 === 0)  ret.push(numbers[i]);
  }
  return ret;
  
//   var ret = [];
//   ret = numbers.map(function(curr, idx, numbers){
//     if (curr % 2 === 0)  curr = curr;
//   });
  
}

console.log(even([1,2,3,4,5,6]));

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
	That JavaScript doesn't have classes, but can get similar functionality. 
	Also we used the 'this' keyword and learned about the difference between
	function expressions and declarations.

What are constructor functions?
	They are functions that make objects with the same variables.

How are constructors different from Ruby classes (in your research)?
	Classes are more set in stone than Javascript objects. In ruby, class
	constructors make an instance of a class and you can check if an object
	is of that type, but in Javascript no such functionality exists. You
	can also add variables and methods and also take them away, making 
	Javascript a little more unreliable.

 */
