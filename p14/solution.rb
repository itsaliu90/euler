class CollatzChainLengthCalculator
    def initialize(starting_number)
        @starting_number = starting_number
        @steps = 1
    end

    def calculate_chain
        while @starting_number != 1 do
            if @starting_number%2 == 0
                @starting_number = @starting_number/2
            else
                @starting_number = @starting_number*3 + 1
            end
            @steps = @steps + 1       
        end
        return @steps
    end
end

answer = 0
longest_chain_length = 0

for i in 1..1000000
    c = CollatzChainLengthCalculator.new(i)
    chain_length = c.calculate_chain
    if chain_length > longest_chain_length
        longest_chain_length = chain_length
        puts "Found new longest Collatz chain for #{i} in #{c.calculate_chain} steps!"
    end
end

puts "The answer is #{answer}"
