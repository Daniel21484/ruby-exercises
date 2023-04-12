# Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print
# out the year of each movie to the screen. The output for your program should look something like this.
# 1975
# 2004
# 2013
# 2001
# 1981

movies = {movie_one: 1975,
					movie_two: 2004,
					movie_three: 2013,
					movie_four: 2001,
					movie_five: 1981
				}

puts movies[:movie_one]
puts movies[:movie_two]
puts movies[:movie_three]
puts movies[:movie_four]
puts movies[:movie_five]


# Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0..4]