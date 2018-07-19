x = 3
answers = []

factorial_hash = { "0" => 1, "1" => 1, "2" => 2, "3" => 6, "4" => 24, "5" => 120, "6" => 720, "7" => 5040, "8" => 40320, "9" => 362880 }

while x < 9999999
  puts x
	if (x.to_s.chars.map {|digit| factorial_hash[digit]}.inject(0) { |sum, x| sum + x } == x)
    answers << x
  end
  x += 1
end

puts "\n"
puts "#{answers}"
