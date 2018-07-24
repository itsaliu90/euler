def permutations(number)
  number.to_s.split("").permutation.map(&:join)
end

i = 1
while 1
  print "." if (i % 1000 == 0)
	perm_array = permutations(i)
	if perm_array.include?((2*i).to_s) && perm_array.include?((3*i).to_s) && perm_array.include?((4*i).to_s) && perm_array.include?((5*i).to_s) && perm_array.include?((6*i).to_s)
		break
	end
	i += 1
end

puts "THE ANSWER IS #{i}!"
