# SECTION 1: Calling methods on string or integer objects.
# Run each line of code below (either from this file or in IRB individually).
# Then, in a ruby comment, write 1-2 sentences describing what is happening, using ALL the involved vocabulary terms you've learned in this lesson so far.

# EXAMPLE
# The downcase method is called on the string object "Hello World"
# No arguments are passed; downcase has one clear job which is to lowercase all letters that exist in the String
# The return value is "hello world"
"Hello World".downcase

# The include? method is called on the string object "Hello World"
# One argument is passed; include? has one clear job which is used to see whether or
# not the string argument passed is a substring of the object on which it is called.
# include? returns a boolean value, in this case it would return true.
"Hello World".include?("Hello")

# The end_with? method is called on the string object "Hello World"
# One argument is passed; end_with? has one clear job which is used to check if the string
# it is called on ends with the suffix passed in the argument.
# The return value is a boolean, and in this case it would return false.
"Hello World".end_with?("Hello")

# The end_with? method is called on the string object "Hello World"
# One argument is passed; end_with? has one clear job which is used to check if the string
# it is called on ends with the suffix passed in the argument.
# The return value is a boolean, and in this case it would return true.
"Hello World".end_with?("rld")

# The even? method is called on the integer object 12.
# The even method does not receive any arguments
# The return value is a boolean, and in this case it would return true.
12.even?

# The next method is called on the integer object 18.
# The next method does not receive any arguments
# The return value is the immediate successor of the number on which next is called.
# In the following example next would return the integer 19.
18.next



# SECTION 2: Calling methods on variables assigned to strings.
# Declare 2 variables assigned to string objects.
# Call a different built-in Ruby method on each of your variables. 
# https://ruby-doc.org/core-3.1.0/String.html
# Include comments above each method call explaining the impact and return value of that method.

# EXAMPLE
# The start_with? method is called on the first_name variable, which stores the string object "Jeff". 
# The start_with? method returns true if the data in the first_name variable starts with the argument passed in.
# In this example, the return value is true, because "Jeff" does start with "J".
# The puts command prints the return value of the start_with? method (true) to the console.
first_name = "Jeff"
first_name.start_with?("J")

# SECTION 2 Solution

city = "Cleveland"
mascot = "Browns"

# The count() method is called on the city variable, which stores the string object "Cleveland".
# The count() method returns an integer value representing the number of times the characters in the string argument
# can be found in the object it is being called on (city => "Cleveland").
# In this example, the return value is the integer 4, because there are 2 instances of "e" and two instances of "l" in the string "Cleveland".
# The puts command prints the return value of the count() method to the console.
puts city.count("el")

# The upcase method is called on the mascot variable, which stores the string object "Browns".
# The upcase method returns a new string with each character of the string object it is called on (mascot => "Browns") capitalized.
# The method does not modify the original string whether it is a string literal or a string expression represented by a variable.
# In this example, the return value is the string "BROWNS".
# The puts command prints the return value of the upcase method to the console.
puts mascot.upcase

# SECTION 3: Calling methods on variables assigned to integers.
# Declare 2 variables assigned to integer objects.
# Call a different built-in Ruby method on each of your variables. 
# https://ruby-doc.org/core-3.1.0/Integer.html
# Include comments above each method call explaining the impact and return value of that method.

year = 2009
age = 28

# The next method is called on the "year" variable, which stores an integer object with the value 2009.
# The next method returns an integer that is the next highest value (i.e. <integer method called on> + 1) relative to the integer object on which it is called.
# In the following scenario, the next method will return 2010, as that is the next highest integer after 2009.
# Immediately after 2010 is returned, the puts method prints 2010 to the console.
puts year.next

# The even? method is called on the "age" variable, which stores an integer object with the value 28.
# The even? method returns a boolean value. If the integer value on which it is called is an even integer, it will return true.
# If the integer value on which even? is called is odd, the method will return false.
# In this scenario, the even? method will return true since 28 is an even number.
# The puts method will print the return value of true to the console.
puts age.even?


# SECTION 4: Calling methods on variables assigned to arrays.
# Declare 2 variables assigned to arrays.
# Call a different built-in Ruby method on each of your variables. 
# https://ruby-doc.org/core-3.1.0/Array.html
# Include comments above each method call explaining the impact and return value of that method.

cities = ["Denver", "Cleveland", "Pittsburgh", "Chicago", "Cincinnati"]
grades = [93, 82, 65, 49, 98, 76, 73, 91, 52, 88, 77, 93]
# The each{} method is called on the variable named "cities", which is an array object that holds five strings (at declaration/assignment).
# The each{} method is an enumerator function that iterates over each element of an arry one time.
# The value returned by the each{} method is the original array on which the function was called.
# If the each{} method is not given a code block after the "each" keyword, it will not throw an error.
# Instead, it will return an Enumerator object.
# If given a code block, the each{} function will perform the statements within the code on each value in the array ONE TIME (unless "return" keyword is 
# included, which would cause the program to break out of the loop and continue executing the code immediately after the each{} method invocation).
# In the following scenario, the each method is called followed by a "do...end" code block that tests each string in the array to see if it is longer than
# 7 characters. If it is, the string is printed to the console using the puts keyword. The result of running the following code leads to three strings,
# "Cleveland", "Pittsburgh", and "Cincinnati" being printed to the console since each of these strings is over 7 characters in length.

cities.each do |city|
    if city.length > 7
        puts city
    end
end

# The method sum is called on the variable "grades", which is an array of integer objects. As the name implies, the sum function adds each value in the array and
# returns a new integer representing the sum of each integer value in the array. With JavaScript being the language with which I have the most experience, I thought
# this method was fabulous. Much more code is needed for JavaScript with the most visually economical being the higher-order array function "reduce()". That Ruby
# makes it as simple as calling .sum on the array is incredible. In the following scenario, the sum function called on the grades array will return the integer value 937.
# After this value is returned, the puts function will print 937 to the console. I also added a second scenario since I can't believe how simple this code is to show how
# easy it would be to get the average scores of a class, for instance.  grades.sum/grades.length immediately returns the average score of 78. In four words. I can't believe it.

puts grades.sum
puts grades.sum/grades.length