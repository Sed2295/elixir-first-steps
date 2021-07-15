#La función filter del módulo Enum sirve para extraer de una colección enumerada de elementos
#una subcolección en la que sólo nos quedamos con aquellos elementos que cumplan con una condición
#booleana que le indiquemos previamente.
#Con arroba generamos constantes
defmodule Filtrar do
  @numeros  [1,2,3,4,5,6,7,8,9,10]
  @mapa %{a: 1,b: 2,c: 3, d: 4}
  def pares do
    Enum.filter(@numeros,fn x -> rem(x,2) == 0 end)
  end
  def paresMapas do
    Enum.filter(@mapa, fn {_, x} -> rem(x,2) == 0 end)
  end
end
IO.inspect Filtrar.pares
IO.inspect Filtrar.paresMapas
