# Defining Our Own Methods
# For each exercise below, write the method according to the requirements. 
# Call each method at least twice and store the return value in a variable. 
# Use the puts or print command to see the return value in the console.


# 1: Write a method named greeting that returns a string with a general greeting.
def greeting(ref)
    "Well hello there, #{ref}! How are you doing today?!?!"
end
partner = greeting("partner")
guvnor = greeting("guv'nor")
puts partner
puts guvnor

# What is the return value of your method?
# A: The return value of the greeting method is a string object.

# How many arguments did you pass your method?
# A: I passed one argument to the greeting method.


# 2: Write a method named custom_greeting that returns a greeting WITH a specific name.

def custom_greeting(name, salutation)
    "Howdy #{name}! #{salutation}"
end

cydnee = custom_greeting("Cydnee", "Great to see you again!!")
kristen = custom_greeting("Kristen", "Hope you're having a fantastic day!!")
puts cydnee
puts kristen
# What is the return value of your method?
# A: The return value of custom_greeting is a string object.
# How many arguments did you pass your method?
# A: I passed two arguments to the custom_greeting method I wrote.
# What data type was your argument(s)?
# A: The data type for both arguments is string


# 3: Write a method named greet_person that takes in 3 strings, a first, middle, and last name, and returns a sentence with the full name.
def greet_person(f_name, m_name, l_name)
    "Good day, #{f_name} #{m_name} #{l_name}!"
end

msd = greet_person("Matthew", "Shaw", "Darlington")
knp = greet_person("Kristen", "Nicole", "Paullus")
puts msd
puts knp

# What is the return value of your method?
# A: The return value of greet_person is a string object
# How many arguments did you pass your method?
# A: I passed three arguments to my greet_person method
# What data type was your argument(s)?
# A: All three data types for the greet_person method are string objects


# 4: Write a method named square that takes in one integer, and returns the square of that integer.
# Bonus: Print a sentence that interpolates the return value of your square method.
def square(n)
    "After processing, here is your returned square #{n**2}"
end
square_1 = square(3)
square_2 = square(1200)
puts square_1
puts square_2

# What is the return value of your method?
# A: The return value of my square method is a string object.
# How many arguments did you pass your method?
# A: The square method I wrote only accepts one argument.
# What data type was your argument(s)?
# A: The data type of the argument for the square method is an integer object.


# 5: Write a method named check_stock that satisfies the following interaction pattern:
# Hint: You will only write one check_stock method that checks the quantity and then prints the corresponding statement.
def check_stock(qty, product)
    def stock(q, prod)
        if q > 3
            # Grammar police -> use 'are' if product ends with 's'.
            # Also correcting error in case 'S' at end of product is capitalized
            if prod.downcase.end_with?("s")
                " - are stocked"
            else
                " - is stocked"
            end
        elsif q <= 3 && q > 0
            " - running LOW"
        else
            " - OUT of stock!"
        end
    end
    puts "#{product.capitalize}#{stock(qty, product)}"
end
check_stock(4, "Coffee");
# # => "Coffee is stocked"

check_stock(3, "Tortillas");
# # => "Tortillas - running LOW"

check_stock(0, "Cheese");
# # => "Cheese - OUT of stock!"

check_stock(1, "Salsa");
# # => "Salsa - running LOW"