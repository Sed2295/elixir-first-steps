#Funciones del mismo modulo y privadas
defmodule Impuestos do
  def total(precio,tipo) do
    porcentaje(tipo) * precio
  end
  #defininmos funcion privada para que solo pueda llmarse desde el mismo modulo
  defp porcentaje(tipo) do
    cond do
      tipo == :normal -> 0.21
      tipo == :reducido -> 0.10
      tipo == :super_reducido -> 0.04
    end
  end
end
IO.inspect Impuestos.total(10, :reducido)
