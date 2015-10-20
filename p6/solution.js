function sumSquareDifference() {
	var firstHundredNumbers = []

	for (var i = 1; i<=100; i++) {
		firstHundredNumbers.push(i)
	}

	console.log("First hundred numbers :", firstHundredNumbers)

	var sumOfTheSquares = 0
	var squareOfTheSum = 0
	var placeHolder = 0

	for (var i = 0; i<firstHundredNumbers.length; i++) {
		sumOfTheSquares += Math.pow(firstHundredNumbers[i], 2)
		console.log("SumOfSquares iteration " + firstHundredNumbers[i] + ", value: " + sumOfTheSquares)
	}

	for (var i = 0; i<firstHundredNumbers.length; i++) {
		placeHolder += firstHundredNumbers[i]
		console.log("placeholder iteration " + firstHundredNumbers[i] + ", value: " + placeHolder)
	}

	squareOfTheSum = Math.pow(placeHolder, 2)

	console.log("sumOfTheSquares: ", sumOfTheSquares)
	console.log("squareOfTheSum: ", squareOfTheSum)

	return squareOfTheSum - sumOfTheSquares
}
