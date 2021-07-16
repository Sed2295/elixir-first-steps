defmodule Pipas do
  @lista [1,2,3,4,5,6,7,8,9]
  def primero do
    @lista |> Enum.filter(fn x -> rem(x,2) ==0 end)
  end
  def segundo do
    @lista |> Enum.filter(fn x -> rem(x,2) == 0 end) |> Enum.map(fn x -> 2 * x end)
  end
  def tercero do
    @lista |> Enum.filter(fn x -> rem(x,2) == 0 end) |> Enum.map(fn x -> 2 * x end) |> Enum.reduce(0, fn x,a -> x + a end)
  end
  def todoJunto do
    @lista
    |> Enum.filter(fn x -> rem(x,2) == 0 end)
    #Forma para debugear codigo
    #|> IO.inspect |> Enum.map(fn x -> 2 * x end)
    |> Enum.map(fn x -> 2 * x end)
    |> Enum.reduce(0, fn x,a -> x + a end)
  end
end

IO.puts("Original: [1,2,3,4,5,6,7,8,9]")
#Sacamos pares
IO.inspect Pipas.primero
#A los pares los multiplicamos por 2
IO.inspect Pipas.segundo
#A los pares que multiplicamos por 2 ahora los sumamos
IO.inspect Pipas.tercero
IO.inspect Pipas.todoJunto
#Otro ejemplo
listados = [1,2,3,4,5]
resultado = listados
  |> Enum.map(fn x -> x + 2 end )
  |> Enum.filter(fn x -> rem(x,2) == 0 end)
IO.inspect resultado
