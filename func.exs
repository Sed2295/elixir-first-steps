defmodule Calculadora do
  #suma/2 significa que recibe dos argumentos
  def suma(num1,num2)do
    IO.puts "Me estan pidiendo que sume #{num1} y #{num2}"
    num1 + num2
    #Recordemos que la ultima linea es la que se devuelve
  end
end
#insepct a diferencia de puts imprime cualquier cosa no solo string
#IO.inspect Calculadora.suma(10,10)
