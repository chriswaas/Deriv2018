module Deriv2018

export derivative
derivative(x::Number, var::Symbol)=0
derivative(sym::Symbol, var::Symbol) = sym == var ? 1 : 0

function derivative(expr::Expr, var::Symbol)
  if expr.head == :call && expr.args[1] == :+
    subexprs = expr.args[2:end]
    res = map(expr -> derivative(expr, var), subexprs)
    return Expr(:call, :+, res...)
  end
  @error "not implemented"
end

end # module
