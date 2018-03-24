# rust-like unicode strings

# char value
x = 'x'
println("x has type ", typeof(x), " and value ", Int(x), " when converted to numerals")


# triple quote 
triple_quote = """ This string contains a quote "char" """

# indexing is 1 based - thinks it's matlab
x = [1,2,3]
println("X is ", x)
x[1] = 2
println("X is now ", x)


# string concatenation through custom operator
x = "hello, " * "world!"
println(x)

# string interpolation - whoah there, going close to perl here
x = """"$x" is a string containing the text "$x" """
println("x is ", x)

# lexiographic string comp

if ("kiran" > "everyone")
    println("The truth has evaluated to true")
else
    println("Not quite the truth")
end

#contains method for substring
full = "joe ate the full english breakfast"
key = "break"

println("Checking whether $full contains $key produces $(contains(full, key))")

# search for cchars
key = 'q'

println("Checking whether $full has char $key produces $(search(full, key))")


# cookin with functions
function f(x,y)
    x + y
end

println("My first function evaluated on 3 and 4 produces f(3,4) = $(f(3,4))")


# operators are functions
p = +

println("My first function evaluated on 3 and 4 produces p(3,4) = $(p(3,4))")


# the rest is essentially python

# dot syntax on arbitrary functions

function addOne(x)
    x + 1
end 

# auto vectorize
arr = [1,2,3]
Y   = [0,0,0]
@. Y = addOne(arr)

println("Vectorizing addOne results in ",Y, " but here Y had to be of the right form") 

println("Applying the addOne elementWise produces ", addOne.([1,2,3]))

# leaky ifs seem like a bad idea
# rust like ifs are expressions

# you can define your own primitive types - this sounds good.


