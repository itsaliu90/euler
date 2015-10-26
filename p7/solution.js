function getNthPrime(target) {
	// let n be the nth prime
	var primeArray = [2]
	var n = 3

	while (primeArray.length < target) {
		for (var i = 0; i < primeArray.length; i++) {
			if ((n % primeArray[i]) === 0) {
				break
			} else if ((i+1) === primeArray.length) {
				primeArray.push(n)
			}
		}
		n++
	}

	return primeArray[primeArray.length-1]
}


