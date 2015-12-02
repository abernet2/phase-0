/*
Pseudocode:
1. Create a function that takes in an array of number.
	Input: array of numbers
	Output: array of number
	Steps:
		1. Define a funtion that will take an array as its input.
			IF the input is not an array of numbers
				- Raise an error that will tell the user that the input is invalid
		2. Return the array of numbers.
2. Create a function that will sum all the numbers of an array
	Input: array of numbers
	Output: sum of the numbers in the array
	Steps:
		1. Create a variable of the running sum and set it to 0
		2. Iterate through each element of the array
		3. Add each element of the array to the running sum
		4. Return the running sum.
3. Create a function that will give me the mean of numbers in an array
	Input: array of numbers
	Output: (mean) -> sum of all the numbers in array divided by the number of elements.
	Steps: 
		1. Create a variable of the running sum and set it to 0
		2. Iterate through each element of the array
		3. Add each element of the array to the running sum
		4. Divide the running sum by the length of the array
		5. Return the result
4. Create a function that will return the median 
	Input: array of numbers
	Output: the median of the sorted array
	Steps:
		1. Sort the array in order from least to greatest
		2. Find the length of the list and divide by 2, store result in a variable
			-3. IF length is odd
				return list[length/2]
			   ELSE
			   	return (list[length/2] + list[(length/2)-1]) / 2
*/
// Function 1
function isArrayOfNum(arr) {
	if(!Array.isArray(arr)) throw new Error("Input is not an array");
	for(var i = 0; i < arr.length; i++) {
		if(isNaN(arr[i]))	throw new Error("Input is an array with at least 1 NaN value");
	}
	return arr;
}

// Function 2
function sum(arr) {
	var runSum = 0;
	for(var i = 0; i < arr.length; i++)
		runSum += arr[i];
	return runSum;
}

// Function 3
function mean(arr) {
	var runSum = 0;
	for(var i = 0; i < arr.length; i++)
		runSum += arr[i];
	return runSum / arr.length;
}

// Function 4
function median(arr) {
	sortedArr = arr.sort(function(a, b) {
		return a - b;
	});
	length = arr.length;
	if (length % 2 == 1)
		return arr[length/2];
	else
		return (arr[length/2] + arr[length/2 - 1]) / 2;
}

var meantest = mean([1,2,3,4,5,6]);
var mediantest = median([1,2,3,4,5,9]);

console.log(mediantest);