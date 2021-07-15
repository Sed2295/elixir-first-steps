# Con la palabra clave defstruct podemos crear estructuras. Son como mapas, pero tienen una semántica que
#declaramos nosotros y que es mucho más fija.
defmodule Perfil do
  defstruct [:nombre, :pais, :animal, edad: 25, bebida: "coca cola", comida: "pizza"]
end
#Para compilar debemos entrar a iex en la carpeta donde se encuentra el archivo, despues introducir
#el comando c("struct.exs") para cargar mi archivo
# %Perfil{} podemos visualizar la defstruct como mapa de tipo Perfil
