defmodule Calcula do
  def operar(func) do
    func.(5,3)
  end
end
#Hacemos uso de funciones anonimas
IO.puts Calcula.operar(fn a,b -> a + b end)
restar = fn a,b -> a - b end
IO.puts(Calcula.operar(restar))
#capturamos funciones ya hechas
#rem es una funcion que esta en el kernel y para capturarla usamos &
IO.puts(Calcula.operar(&rem/2))
