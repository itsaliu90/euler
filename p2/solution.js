function calculateEvenFibonacci(limit) {
	var sequence = [1,2]
	var i = 1
	var j = 2
	var answer = 0

	while (i+j <= limit) {
		var next = i+j
		sequence.push(next)
		i=j
		j=next
	}

	for (var i=0; i<sequence.length; i++) {
		if (sequence[i]%2 === 0) {
			answer += sequence[i]
		}
	}

	console.log(answer)
	return answer
}

calculateEvenFibonacci(4000000)
