def factorial(n)
    if n<=1
        1
    else
        n * factorial(n-1)
    end
end

answer = factorial(100)
answer_array = answer.to_s.split("")
total = answer_array.inject(0) {|base, element| base.to_i + element.to_i}
puts total
