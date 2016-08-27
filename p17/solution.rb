one = 3
two = 3
three = 5
four = 4
five = 4
six = 3
seven = 5
eight = 5
nine = 4
ten = 3
eleven = 6
twelve = 6
thirteen = 8
fourteen = 8
fifteen = 7
sixteen = 7
seventeen = 9
eighteen = 8
nineteen = 8
twenty = 6
thirty = 6
forty = 5
fifty = 5
sixty = 5
seventy = 7
eighty = 6
ninety = 6
hundred = 7
thousand = 8
nd = 3

#one to nineteen
one_to_nine = one + two + three + four + five + six + seven + eight + nine

one_to_nineteen = one + two + three + four + five + six + seven + eight + nine + ten + eleven + twelve + thirteen + fourteen + fifteen + sixteen + seventeen + eighteen + nineteen
puts "one to nineteen: #{one_to_nineteen}"

twenty_to_ninety_nine = twenty*10 + thirty*10+ forty*10 + fifty*10 + sixty*10 + seventy*10 + eighty*10 + ninety*10 + (one_to_nine)*8
puts "twenty to ninety-nine: #{twenty_to_ninety_nine}"

one_to_ninety_nine = one_to_nineteen + twenty_to_ninety_nine

one_hundred_to_nine_hundred_nd_ninety_nine = (one + hundred)*100 + (two + hundred)*100 + (three + hundred)*100 + (four + hundred)*100 + (five + hundred)*100 + (six + hundred)*100 + (seven + hundred)*100 + (eight + hundred)*100 + (nine + hundred)*100 + (nd*99*9) + (one_to_ninety_nine * 9)
puts "one hundred to nine-hundred and ninety-nine: #{one_hundred_to_nine_hundred_nd_ninety_nine}"

total = one + thousand + one_hundred_to_nine_hundred_nd_ninety_nine + one_to_ninety_nine

puts "total is #{total}"
