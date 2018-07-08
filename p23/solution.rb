require 'pp'
require 'prime'
require 'pry'

class Integer
  def proper_divisors
    return [] if self == 1
    primes = prime_division.flat_map{|prime, freq| [prime] * freq}
    (1...primes.size).each_with_object([1]) do |n, res|
      primes.combination(n).map{|combi| res << combi.inject(:*)}
    end.flatten.uniq
  end
end

n = 1
abundant_numbers = []

while n < 28123
  proper_factors = n.proper_divisors.flatten.uniq

  puts "proper factors of #{n}: #{proper_factors.to_s}"

  sum_of_proper_factors = proper_factors.inject(0){ |sum,x| sum + x }

  puts "sum_of_proper_factors #{sum_of_proper_factors}"

  if sum_of_proper_factors > n
    abundant_numbers << n
    puts "found an abundant number: #{n}"
  end
  n += 1
end

puts "abundant numbers: #{abundant_numbers}"

sum_of_abundant_number_pairs = []

abundant_numbers.each do |an|
  sum_of_abundant_number_pairs << an*2
end

abundant_numbers.permutation(2).to_a.each do |permutation|
  sum_of_abundant_number_pairs << permutation.inject(0) { |sum, x| sum + x }
end

sum_of_abundant_number_pairs_hash = Hash[sum_of_abundant_number_pairs.collect { |sum| [sum, ""] }]

final_sum = 0

number = 1

# binding.pry

while number < 28123
  puts "looking at number #{number}"
  if sum_of_abundant_number_pairs_hash.key? number
    number += 1 
    next
  else
    puts "found a special number!"
    final_sum += number
    number += 1
  end
end

puts "final sum: #{final_sum}"
