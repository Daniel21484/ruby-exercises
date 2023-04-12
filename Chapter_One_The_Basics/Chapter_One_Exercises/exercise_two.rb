# # Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the
# # 1) thousands place 2) hundreds place 3) tens place 4) ones place

# # 4567 will be the example number

# # To get the number in the thousands place we will use the divide operator to get the remainder of 4567 divided by 1000

 puts 4567 / 1000

# # This will return 4
# # To get the number in the hundreds place we will use the modulo operator to get rid of the thousands place and then divide by 100 to get the hundreds place

 puts 4567 % 1000 / 100

# # This will return 5
# # To get the number in the tens place will use modulo division by 100 to get rid of the hundreds place and then divide by 10 to get the tens place

 puts 4567 % 100 / 10

# # This will return 6
# # To get the number in the ones place we will use the modulo operator to get rid of the tens place and then divide by 1 to get the ones place

 puts 4567 % 10 

# # This will return 7

# Another way to do this code with variable names

thousands = 4567 / 1000
hundreds = 4567 % 1000 / 100
tens = 4567 % 100 /10
ones = 4567 % 10

# Then the puts using the variables and the .to_s method

puts 'The number in the thousands place is ' + thousands.to_s
puts 'The number in the hundreds place is ' + hundreds.to_s
puts 'The number in the tens place is ' + tens.to_s
puts 'The number in the ones place is ' + ones.to_s

# Can also puts using the variables and string interpolation

puts "The number in the thousands place is #{thousands}"
puts "The number in the hundreds place is #{hundreds}"
puts "The number in the tens place is #{tens}"
puts "The number in the ones place is #{ones}"
