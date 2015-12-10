/*
Gradebook from Names and Scores
I worked on this challenge [by myself]
This challenge took me [2] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// // Release 1
// var gradebook = {};
// // Release 2
// for (var i = 0; i < students.length; i++) {
//   gradebook[ students[i] ] = {};
// }
// // Release 3
// for (var student in gradebook) {
//   var score = scores.shift();
//   gradebook[student].testScores = score;
//   console.log(gradebook[student].testScores)
//   scores.pop(score);
// }
// console.log(gradebook["William"].testScores)

// // Release 4
// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score);
// }

// // Release 5
// gradebook.getAverage = function() {}

// // Release 6
// function average(array) {
//   var sum = 0;
//   for (var i = 0; i < array.length; i++) {
//     sum += array[i];}
//   return sum / array.length;
// }

// // Release 7
// gradebook.getAverage = function(name) {
//   var student = gradebook[name];
//   return average(student.testScores);
// }



// __________________________________________
// Refactored Solution

function average(array) {
  var sum = array.reduce(function(a,b) { return a+b;} );
  return sum / array.length;
}

var Gradebook = function Gradebook(students, scores){
  // adds the students and scores
  for (var i = 0; i < students.length; i++) {
    this[ students[i] ] = {testScores: scores[i]};
  }

  this.addScore = function(name, score) {
    this[name].testScores.push(score);
  }

  this.getAverage = function(name) {
    var student = this[name];
    return average(student.testScores);
  }
};

var gradebook = new Gradebook(students, scores);

// __________________________________________
// Reflect


// What did you learn about adding functions to objects?
//  add functions is pretty easy, you basically just assign it straight up.
//  object.[function name here] = function() {}
// 
// How did you iterate over nested arrays in JavaScript?
//  I didn't iterate over the array because it didn't seem necessary the way
//  that the data was given. If I were to do so I would use 2 for loops.
// 
// Were there any new methods you were able to incorporate?
// If so, what were they and how did they work?
//  Yes, I used the reduce method to calculate the sum and that was a little bit
//  easier than just getting the sum. Other than that most of my optimization
//  came from declaring students and assigning their test scores in 1 loop.
// 






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)