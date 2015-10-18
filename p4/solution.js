// 999 * 999 is 998,001

//Brute force first

function isPalindrome(number) {
	var numberString = number.toString();
	if (numberString.length%2 === 0) {
		for (var i = 0; i < numberString.length/2; i++) {
			if (numberString[i] != numberString.charAt(numberString.length-(i+1))) {
				return false
			} else {
				continue
			}
		}
		return true;
	} else {
		for (var i = 0; i < Math.floor(numberString.length/2)-1; i++) {
			if (numberString[i] != numberString.charAt(numberString.length-(i+1))) {
				return false
			} else {
				continue
			}
		}
		return true;
	}
}

function findLargestPalindromeGivenTwoNumberWithFollowingNumberOfDigits(digits) {
	
	var lowerRange = Math.pow(10,digits-1)
	var higherRange = Math.pow(10,digits)-1
	var largestPalindrome = 0
	var numberArray = [0,0]

	for (var i = lowerRange; i<higherRange; i++) {
		for (var j = lowerRange; j<higherRange; j++) {
			if (isPalindrome(i*j)) {
				if (i*j > largestPalindrome) {
					largestPalindrome = i*j
					numberArray = [i,j]
				}
			}
		}
	}

	return largestPalindrome
}
