#Una recursion ocurre cuando una función se llama asi misma
#modo 1
#defmodule Recursivo do
#  def factorial(0) do
#    1
#  end
#  def factorial(n) do
#    n * factorial(n-1)
#  end
#end
#modo 2
defmodule Recursivo do
  def factorial(n) do
    if n==0 do
      1
    else
      n * factorial(n-1)
    end
  end
end
IO.inspect Recursivo.factorial(5)
