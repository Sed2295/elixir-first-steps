defmodule Gcalc do
  #importamos gen server (macro)
  use GenServer
  def add(pid,x,y)do
    GenServer.call(pid, {:add, x, y})
  end
  #se debe de llamar forzozamente init
  def init(param) do
    IO.puts "Inicio Gen server Gcalc"
    IO.inspect param
    #{:stop, "La base de datos no se a conectado."}
    #:ignore
    #Comandos en terminal
    #Cargamos el archivo y ejecutamos este comando
    # GenServer.start_link(Gcalc, [], [timeout: 2500])
    #posterior a ello como le pusimo un sleep de 6000 se va a terminar el proceso por el timeout que solo puede esperar 2 seg y medio
    #Process.sleep(6000)
    {:ok, %{conteo: 0}, 3000}
  end
  #Funcion donde se termina
  def terminate(reason, state) do
    IO.puts "TERMINAMOS"
    :nil
  end
  #Funcion que permite hacer client servidor con procesos
  def handle_call({:add, n, m}, _from, %{conteo: conteo}) do
    IO.puts "handle_call(:add, #{n}, #{m})"
    resul = n + m
    {:reply, resul, %{conteo: conteo + 1}}
  end
  #Funcion donde dividimos y paro el proceso y mando un mensaje de error.
  def handle_call({:div, n,m}, _from, state) do
    if m == 0 do
      {:stop, "No puedo dividir por 0"}
    else
      {:reply, n/m, state}
    end
  end
  #Esta función la vamos a utilizar cuando vayamaos a mandar un mensaje pero no esperemos respuesta
  def handle_cast(:reset, _state) do
    IO.puts "handle_cast(:reset)"
    {:noreply, %{conteo: 0}, 3000}
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
  def handle_info(msg, state) do
    IO.inspect msg, label: "INFO"
    {:noreply, state}
  end
end
#Comandos a ingresar en iex
# c("gcalc.exs")
# {:ok, pid} = GenServer.start(Gcalc, [])
# GenServer.call(pid, {:add, 2, 3}) //5
# o para resetear
#  GenServer.cast(pid, :reset)
