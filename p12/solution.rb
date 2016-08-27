require 'prime'

i = 1

def calculate_ith_triangle_number(i)
    answer = 0
    while i>0
        answer += i
        i = i-1 
    end
    return answer
end

def calculate_number_of_divisors(n)
    prime_factor_array = n.prime_division
    number_of_divisors = prime_factor_array.inject(1) {|current, element| current * (element[1] + 1)}
    return number_of_divisors
    #number_of_divisors = 0
    #i = 1
    #while i <= n
    #    if n%i == 0
    #        number_of_divisors += 1
    #    end
    #    i += 1
    #end
    #return number_of_divisors
end

while true
    triangle_number = calculate_ith_triangle_number(i)
    puts "the #{i} triangle number is #{triangle_number}, it has #{calculate_number_of_divisors(triangle_number)} divisors"
    if calculate_number_of_divisors(triangle_number) > 500
        puts "the first triangle number to have over 500 divisors is #{triangle_number}"
        break
    else
        i += 1
    end
end

