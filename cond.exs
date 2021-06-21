lluvia = 100
#Haciendo uso del cond
#Nota importante cuando usemos cond se va a jecutar de arriba a hacia abajo, asi que si colocamos el true hasta arriba,
#es lo que se va a ejecutar sin importar el caso
mensaje = cond do
  lluvia == 0 -> "No a llovido"
  lluvia < 30 -> "Ha llovido un poco"
  lluvia < 60 -> "Ha llovido un rato"
  lluvia < 90 -> "Ha llovido bastante"
  #Condición que siempre se va a cumplir en caso de que no caiga en ninguna de las anteriores
  true -> "Ya es un ciclon!!"
end
#FORMA TRADICIONAL
#mensaje = if lluvia == 0 do
#  IO.puts "No a llovido"
#else
#  if lluvia < 30 do
#    IO.puts "Ha llovido un poco"
#  else
#    IO.puts "Ha llovido bastante"
#  end
#  IO.puts "Ha llovido"
#end
IO.puts mensaje
