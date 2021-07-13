defmodule Calculadora do
  def suma(num1,num2)do
    IO.puts "Me estan pidiendo que sume #{num1} y #{num2}"
    num1 + num2
  end
  def restar(num1,num2)do
    IO.puts "Me estan pidiendo que reste #{num1} y #{num2}"
    num1 - num2
  end
  def multiplicar(num1,num2)do
    IO.puts "Me estan pidiendo que multiplique #{num1} y #{num2}"
    num1 * num2
  end
  #Recordemos que el orden en la que lo declaremos va a ser muy importante
  #usamos _ para no usar ese parametro y no marque el warning y el when es cuando num2 sea igual a 0 entonces retorna infinito
  def dividir(_num1,num2) when num2 == 0 do
    :inf
  end
  def dividir(num1,num2)do
    IO.puts "Me estan pidiendo que divida #{num1} y #{num2}"
    num1 / num2
  end
end
