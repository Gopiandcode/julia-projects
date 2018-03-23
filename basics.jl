# Pythonic comments...

# basic data types
a_scalar = 1.23
a_boolean = true
a_string = "Hello, world!"

# arithmetic operates like python
arith_expression = 4.0 * 2.0 / 3.0 + 10 - 23
math_func = exp(2.3  * 3.2) * cos(22* 180/pi)


# if statements like python
if (math_func > 1)
    println("Math function is greater than one")
else
    println("Math function is less than or equal to one")
end


# python sequences
a = 1:5
a = 1:0.1:5


# filthy dynamic typing
uni_typed_list = ["a", 1, 1.02]

# obvious indexing
indexed_item_a = uni_typed_list[1]

# not python guys, it's not python
non_pythonic_length = length(uni_typed_list)

# pythonic loops
for i in uni_typed_list
    print("I hate dynamic typing - ")
    println(i)
end
