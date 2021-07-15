# La función reduce del módulo Enum sirve para acumular parcialmente cada uno de los elementos de una
#colección enumerada entrante, hasta evaluarse completamente a un único resultado final.
defmodule Reducir do
  @lista [1,2,3,4,5]
  @saludos ["hola","buenas tardes","adios"]
  def inicio do
    Enum.reduce(@lista,0, fn x,acumulador -> x + acumulador end)
  end
  def segundo do
    #Con io.inspect podemos ir viendo como se va armando el mapa
    Enum.reduce(@saludos,%{},fn cadena,mapa -> IO.inspect(Map.put(mapa, cadena, String.length(cadena))) end)
  end
end
IO.inspect Reducir.inicio
IO.inspect Reducir.segundo
