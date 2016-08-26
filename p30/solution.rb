i = 2

results_array = Array.new

while i < 1000000 do
    array = i.to_s.split("")
    sum = array.inject(0) { |result, element| result.to_i + element.to_i**5 }
    if sum == i
        results_array << i
        puts "found new result: #{i}"
    end
    i += 1
end

puts results_array.inject(0) {|result, element| result + element}
