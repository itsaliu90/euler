#Goal: Find all primes under 1,000,000 that are rotatable

require 'prime'

def rotations(number)
  rotations = [number]
  length = number.to_s.length-1
  
  until length == 0
    number = number.to_s.chars.rotate.join().to_i
    rotations << number
    length -= 1
  end

rotations
end

def check_if_circular_prime(number)
  return if $list_of_circular_primes.key?(number)
	return if number.to_s.include?("0")

  rotations_array = rotations(number)
  if (rotations_array.all? { |number| Prime.prime?(number)})
    rotations_array.each { |number| $list_of_circular_primes[number] = true }
  end
end

$list_of_circular_primes = {}

i = 1
while i < 1000000
  check_if_circular_prime(i)
  i += 1
end

$list_of_circular_primes.length

