#A diferencia de Enum.map y Enum.filter, con Stream.map y Stream.filter podemos obtener Streams.
#Un Stream en Elixir permite hacer procesamiento pospuesto: Elixir sabe que quiero procesar una
#colección con una función, pero no ejecuta el cómputo hasta que no haga falta, algo que en algunas
#ocasiones es ventajoso para hacer programas más eficientes.
IO.puts "Stream original:"
IO.inspect 1..10 |> Stream.map(&IO.inspect/1)
IO.puts "Stream del 1 al 100 y despues se convierte a lista:"
IO.inspect 1..100 |> Stream.map(&IO.inspect/1) |> Enum.to_list
IO.puts "Del 1 al 100 y solo obtenemos los 5:"
#Nota: si lo hubieramos hecho con Enum se tendria que procesar todo del 1 al 100 y con stream ya no
IO.inspect 1..100 |> Stream.map(&IO.inspect/1) |> Enum.take(5)
