def calculate_length(number)
    return number.to_s.length
end

first_term = 1
second_term = 1
index = 2

while calculate_length(second_term) < 1000 do
    stored_second_term = second_term
    second_term = second_term + first_term
    first_term = stored_second_term
    index += 1
    puts "New second term #{second_term} has a length of #{calculate_length(second_term)}"
end

puts index
