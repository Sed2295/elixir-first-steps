#La concurrencia es la capacidad de realizar varias tareas al mismo tiempo
defmodule Concurrencia do
  def saludar() do
    #IO.puts "Hola, #{nombre}"
    receive do
      {pid, x} -> send(pid, "Hola, #{x}")
    end
    saludar()
  end
  #funcion infinita para que nunca acabe el proceso
  #def infinito, do: infinito()
end
# En iex
# c("concurrencia.exs")
# pid = spawn(Concurrencia, :saludar, [])
# Process.alive? pid
# Process.info pid
# Iniciamos la conversacion por lo tanto despues se muere el proceso
# send pid, "Iniciando conversacion"
#------ Para estar enviando mas mensajes no solo uno-------#
#send(pid, {self(), "araceli"})
#send(pid, {self(), "joe"})
#send(pid, {self(), "mike"})
# Process.info pid //  stack_size: 3
#contamos con las dos directivas send y receive
