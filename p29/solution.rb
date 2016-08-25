h = {}

for a in 2..100 do
    for b in 2..100 do
        product = a**b
        h[product] = true
        puts "#{a} to the #{b}th power is #{a**b}"
    end
end
puts h.length
