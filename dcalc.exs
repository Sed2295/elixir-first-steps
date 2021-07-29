defmodule Dcalc do
   def calculadora do
    receive do
      {pid, :+, a, b} -> send(pid, a + b)
      {pid, :-, a, b} -> send(pid, a - b)
      {pid, :x, a, b} -> send(pid, a * b)
      {_pid, :/, _a, 0} -> exit("El proceso se acaba")
      {pid, :/, a, b} -> send(pid, a / b)
    end
    calculadora()
   end
end
#Comandos a ejecutar en iex
# c("dcalc.exs")
# pid = spawn(Dcalc, :calculadora, [])
# send(pid, {self(), :+, 3,3)
# flush() // 6
# send(pid, {self(), :/, 5,3})
# flush()
# 1.6666666666666667
#PARA UNIR EL PROCESO
# pid = spawn(Dcalc, :calculadora, [])
# Process.link pid
# send(pid, {self(), :/, 5,0}) // ** (EXIT from #PID<0.106.0>) shell process exited with reason: "El proceso se acaba"
# PARA QUITAR EL LINK DEL PROCESO
#  Process.unlink pid
# la forma mas rapida para hacer el link a un proceso
 #  pid = spawn_link(Dcalc, :calculadora, [])
