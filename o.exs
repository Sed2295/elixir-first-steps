#Programa donde hacemos uso de pin para comparar y no igualar
defmodule Foo do
  def bar do
    x=4
    ^x=4
    IO.puts "x = #{x}"
  end
end
Foo.bar
