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
