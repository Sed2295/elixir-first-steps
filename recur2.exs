#Para correr introcimos los comandos
# iex
# c("recur2.exs")
# RecursionListas.dobles([1,2,3,4,5])
# RecursionListas.pares([1,2,3,4,5])
defmodule RecursionListas do
	def dobles([]), do: []
	def dobles([cabeza | cola]), do: [ cabeza * 2 | dobles(cola) ]

	def pares([]), do: []
	def pares([cabeza | cola]) when rem(cabeza,2) == 0, do: [cabeza | pares(cola)]
	def pares([cabeza | cola]), do: pares(cola)
end
