// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/*

Change number to a string.


Create container to hold new string

WHILE string length is greater than 3
  Take last 3 digits
  Remove from string
  Add to new string with a comma in front
Add the rest to new string

Return new string

*/

// Initial Solution

// function separateComma(number) {
//   var string = number.toString();
  
//   var new_string = "";
  
//   while (string.length > 3){
//     var three_digits = string.substr(string.length - 3, string.length - 1);
//     new_string = "," + three_digits + new_string;
//     string = string.substr(0, string.length - 3);
//   }
  
//   new_string = string + new_string;
  
//   return new_string;
// }

// console.log(separateComma(1569743))

// Refactored Solution

//   Declare a return string container
//   Iterate over the number
  //   Pop last 3 digits of number
  //   add comma and 3 digits to return container
// add remaining digits to return container
// Return string


function separateComma(number) {
  // var string = number.toString();
  var num_with_commas = "";
  
  while (number > 1000){
    var three_digits = number % 1000;
    num_with_commas = "," + three_digits + num_with_commas;
    number = Math.floor(number / 1000);
  }
  
  num_with_commas = number + num_with_commas;
  
  return num_with_commas;
}



// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(100) === "100"),
  "Fails on 100 input",
  "1."
)

assert(
  (separateComma(1234) === "1,234"),
  "Fails on 1234 input",
  "2."
)

assert(
  (separateComma(12345678) === "12,345,678"),
  "Fails on 12345678 input",
  "3."
)

assert(
  (separateComma(1234567890) === "1,234,567,890"),
  "Fails on 1234567890 input",
  "4."
)

/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
What did you learn about iterating over arrays in JavaScript?
What was different about solving this problem in JavaScript?
What built-in methods did you find to incorporate in your refactored solution?
 */