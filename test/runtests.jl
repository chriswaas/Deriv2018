using Deriv2018

@show derivative(3, :x)
@show derivative(:x,:x)
@show derivative(:y,:x)
@show derivative(:(2+x+a), :x)
