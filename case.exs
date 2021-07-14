#case es el tercer tipo de condicional como if,cond y case
#case con pattern matching y haciendo uso del guardas(when)
#exp = {:ok,"hola"}
#exp = {:ok,55555}
exp = nil
output = case exp do
  {:ok,x} when is_number(x) -> "Ha resuelto correctamente con #{x}"
  {:ok,x} -> "Ha resuelto #{x}"
  {:error,_y} -> "No ha resuleto correctamente"
  _ -> "Default"
end
IO.puts output
