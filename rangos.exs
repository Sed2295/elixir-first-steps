#Los rangos te sirven para no tener que codear tanto
#Los rangos representan una secuencia de cero, uno o muchos, números enteros ascendentes o
#descendentes con una diferencia común llamada paso.
IO.puts("Numeracion del 1 al 15:")
1..15 |> Enum.map(&IO.inspect/1)
IO.puts("Sumatoria  del 1 al 15:")
IO.inspect(1..15 |> Enum.sum)
IO.puts("Pares del 1 al 15:")
IO.inspect(1..15 |> Enum.filter(fn x -> rem(x,2) == 0 end))
IO.puts("Pares del 1 al 15 (longitud)")
IO.inspect(1..15 |> Enum.filter(fn x -> rem(x,2) == 0 end) |> length)
