defmodule Gcalc do
  #importamos gen server (macro)
  use GenServer
  #se debe de llamar forzozamente init
  def init(param) do
    IO.puts "Inicio Gen server Gcalc"
    IO.inspect param
    {:ok, %{conteo: 0}}
  end
  #Funcion que permite hacer client servidor con procesos
  def handle_call({:add, n, m}, _from, %{conteo: conteo}) do
    IO.puts "handle_call(:add, #{n}, #{m})"
    resul = n + m
    {:reply, resul, %{conteo: conteo + 1}}
  end
  #Esta funcion la vamos a utilizar cuando vayamaos a mandar un mensaje pero no esperemos respuesta
  def handle_cast(:reset, _state) do
    IO.puts "handle_cast(:reset)"
    {:noreply, %{conteo: 0}}
  end
  #NOTA: handle_info casi no se usa
  #se debe de llamar forzozamente handle_info
  def handle_info(:hello, %{conteo: conteo}) do
    IO.puts "He sido llamada #{conteo} veces"
    {:noreply, %{conteo: conteo + 1}}
  end
  def handle_info(:world, state) do
    {:noreply, state}
  end
end
#Comandos a ingresar en iex
# c("gcalc.exs")
# {:ok, pid} = GenServer.start(Gcalc, [])
# GenServer.call(pid, {:add, 2, 3}) //5
# o para resetear
#  GenServer.cast(pid, :reset)
