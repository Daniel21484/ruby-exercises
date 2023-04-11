# Add two strings together that, when concatenated, return your first and last name as your full name in one string.
# For example, if your name is John Doe, think about how you can put "John" and "Doe" together to get "John Doe".

'Daniel ' + 'Davis'

# This should return "Daniel Davis" with space.

# If we wanted to do the same thing with variables i would do it like this using concatenation.

first_name = 'Daniel'
last_name = 'Davis'

puts first_name + ' ' + last_name

# This should return "Daniel Davis" with space just like the above example.

# If we wanted to do the same thing with variables i would do it like this using interpolation.

first_name = 'Daniel'
last_name = 'Davis'

puts "#{first_name} #{last_name}"