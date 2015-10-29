// Create a function

function eratosthenes(number) {
	var list = [], upperLimit = Math.sqrt(number), output = [], sum = 0

	// Make an array from 2 to n-1

	for (var i = 0; i < number; i++) {
		list.push(true)
	}

	// Iterate through and check if a number if prime. 
	// If it is, remove all multiple of that number.

	for (var i = 2; i < upperLimit; i++) {
		if (list[i]) {
			for (var j = i*i; j < number; j += i) {
				list[j] = false 
			}
		}
	}

	// All array[i] set to true are primes
	for (var i = 2; i < number; i++) {
	    if(list[i]) {
	        output.push(i);
	    }
	}

	// Sum output

	for (var i = 0; i < output.length; i++) {
		sum += output[i]
	}

	console.log(sum);
}

eratosthenes(2000000)
