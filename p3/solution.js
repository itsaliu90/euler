// This is a function that returns all the prime factors of a given number in any array.

function findPrimeFactorsOf(number) {

    var array = [] // This is where we store the prime factors
    
    function updateArrayWithFactorsOf(number) {
    	for (var i = 2; i <= number; i++) {
    		if (number % i === 0 && i != number) {
    		    array.push(i)
    			var largerFactor = number/i
    			updateArrayWithFactorsOf(largerFactor)
    			break;
    		} else if (i === number) {
    		    array.push(i)
    		}
    	}
    }

    updateArrayWithFactorsOf(number);

    return array
}


