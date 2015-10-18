//Let n be the number we are testing

function findFactorsOf(number) {
    var array = []
    
    function updateArrayWithFactorsOf(number) {
    	for (var i = 2; i <= number; i++) {
    		console.log("Current value of i is: ", i)
    		console.log("The number is: ", number)
    		if (number % i === 0 && i != number) {
    		    array.push(i)
    			var largerFactor = number/i
    			console.log("ENTERING LOOP!")
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


