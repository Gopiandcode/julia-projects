f(x::Float64, y::Float64) = 2x + y
f(x::Int, y::Int) = 3x + y

f(x::Number, y::Number) = x + y
f(x,y) = println("printing f(", x, ",", y, ")")

# spooky

println("f(1.0,2.0) = ", f(1.0,2.0))
println("f(1,2) = ", f(1,2))
println("f(1.0, 2) = ", f(1.0,2))
println("f(1, 2.0) = ", f(1,2.0))
println("f(\"hello world!\", 1) = ", f("hello world!", 1))


# parametric functions

function same_type(x::T, y::T) where {T}
    true
end

same_type(x,y) = false

println("same_type(1.0,2.0) = ", same_type(1.0,2.0))
println("same_type(1,2) = ", same_type(1,2))
println("same_type(1.0, 2) = ", same_type(1.0,2))
println("same_type(1, 2.0) = ", same_type(1,2.0))


struct Polynomial{R<:Number} 
    coeffs::Vector{R}
end


function (p::Polynomial)(x)
    v = p.coeffs[end]
    for i = (length(p.coeffs)-1):-1:1
        v = v * x + p.coeffs[i]
    end
    return v
end

p = Polynomial([1,10,100]) # p = 100x^2 + 10 x + 1
println("p(0) = ", p(0))
println("p(1) = ", p(1))


# we can write constructors for our functions as follows
struct Example 
    x
    y
end

Example() =  Example(1,2)
