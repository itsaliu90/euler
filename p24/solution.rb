i = 1
sum = 0

while i <= 1001 do
    i_squared = i**2
    sum += 4*i_squared - 6*(i-1)
    i = i + 2
    puts "total sum of side length #{i} is #{sum}"
end
