# wraparound semantics
x = typemax(Int64)
println("X is ", x)
x += 1
println("X is now ", x)

# auto type promotion
x = typemax(Int32)
println("X is of type ", typeof(x), " and is ", x)
x += 1
println("X is of type ", typeof(x), " and is ", x)


# bits return the binary repr
x = 24
println("Binary representation of ", x, " is ", bits(x))


# eps returns the epsilon of a type
println("Epsiolon of ", Float32, " is ", eps(Float32))


# generic text deserialization
x = parse(BigInt, "12345678910")
println("X is a ", typeof(x), " and is ", x)

# this one is actually pretty clever - I mean why hasn't anyone done it before
x = 3
# coefficients can precceed variables without multiplication signs
poly = 2x + 5x^4

#it thinks it's matlab
x = [1,2,3] .^ 2
println("X is now ", x)


# now this is nice
x = [1,2,3] 
modified = (x .- 2) .^ 2 ./ 3

println("Variance of x is boom ", sum(modified))


# it's got mathematics all over it - imaginary  nums
x = 1 + 2im
println("X is an imaginary number - ", x, ", x^2 is ", x * x)
