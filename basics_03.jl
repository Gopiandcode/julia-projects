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

# easy syntactic sugar for type assertions at runtime
x = (1 + 2)::Int64

# almost-static typing for variables - except at runtime

function fx(x)
    this_is_an_int::Int = 12
    this_is_an_int + 1
end

# subtype checking
is_sub = Integer <: Number
println("Is integer a subtype of number ", is_sub)


# custom primitive type instantiation
primitive type Kiran <: Unsigned 16 end

# composite types

struct Composite
    anyTypeField
    specifiedTypeField::Int
end


println(Composite("Example", 10))
println(fieldnames(Composite))

# structs are immutable

# mutable structs are mutable - passed around like real class objects
mutable struct Awesome
    anyTypeField
    specifiedTypeField::Int
end


# damn we're going full c here - unions
EitherOr = Union{Awesome, Int}


# parametric adts - makes it better than go
struct ParametricComposite{T}
    x::T
    y::T
end


# parametric functions
function norm(p::ParametricComposite{<:Real})
    sqrt(p.x^2 + p.y^2)
end


# no none object - better than python - uses a frikken monad instead





