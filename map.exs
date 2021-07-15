# La función map del módulo Enum sirve para transformar uno a uno cada elemento de una colección enumerada,
#recogiendo cada uno de esos elementos transformados en otra colección resultante que
#obtenemos tras evaluar.
#A diferencia de fliter map nos devulve todo pero transoformado si es que lo deseamos
#RUN WITH elixir map.exs
defmodule Mapa do
  @lista [1,2,3,4]
  def multiplica do
    Enum.map(@lista, fn x -> x * 2 end)
  end
  def resto do
    Enum.map(@lista, fn x -> rem(x,3) end)
  end
  def tupla do
    Enum.map(@lista, fn x -> {x, x*2} end )
  end
end
IO.puts("Original: [1,2,3,4]")
IO.inspect Mapa.multiplica
IO.inspect Mapa.resto
IO.inspect Mapa.tupla
