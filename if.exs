#if [condicion]
#  [expresion A]
#  [expresion B]
edad = 15
if edad >= 18 do
  IO.puts "Mayor de edad"
else
  espera = 18 - edad
  IO.puts "Menor de edad vuelve dentro de #{espera} años"
end
