def find_sum_of_divisors_of(number)
    sum = 0
    for i in 1..number-1
        if number%i == 0
        sum += i
        end
    end
    return sum
end

answer = 0

for i in 1..10000
    if find_sum_of_divisors_of(i) != i && find_sum_of_divisors_of(find_sum_of_divisors_of(i)) == i
        puts "Found amicable pair: #{i}, #{find_sum_of_divisors_of(i)}"
        answer += i + find_sum_of_divisors_of(i)
    end
end

puts answer/2 
