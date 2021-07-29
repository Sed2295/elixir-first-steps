#PROCESOS QUE GUARDAN COSAS
defmodule Estado do
  def contador(), do: contador(0)
  defp contador(value) do
    value = Process.get(:valor) || 0
    receive do
      {:get, pid} ->
        send(pid, Process.get(:valor))
        #contador(value)
      {:inc} ->
        Process.put(:valor, value + 1)
        #contador(value + 1)
      {:dec} ->
        Process.put(:valor, value - 1)
        #contador(value - 1)
      {:reset} ->
        Process.put(:valor, 0)
    end
    contador
  end
end
#Nota: con Process.put() guardamos informacion del estado
#comandos a ejecutar en iex
#c("estado.exs")
# pid = spawn(Estado, :contador, [])
#send(pid, {:inc})
#send(pid, {:get, self()})
#self() //#PID<0.106.0> nos da el id del proceso
# flush() //1 :ok
#send(pid, {:reset})
#flush() //0
