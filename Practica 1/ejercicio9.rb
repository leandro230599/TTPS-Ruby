# En este ejercicio, sobre una cadena de Strings, se debe implementar metodos que puedan girar el string, eliminar espacios en blanco, retornar un arreglo con cada uno de los ascii de los caracteres y reemplazar la a A por 4, e E por 3, i I por 1, o O por 0, u U por 6

puts "Hola que tal".reverse
puts "Estoy eliminando los espacios en blanco con GSUB".gsub(/\s/,'')
puts "Estoy eliminando los espacios en blanco con DELETE".delete(' ')
puts "abcd".bytes # Imprime cada valor del array en una nueva linea
p "abcd".bytes # Imprime cada valor del array en la misma linea
puts "Reemplazando algunos valores y probando imprimiendo".gsub(/[aA+]/, "4").gsub(/[eE+]/, "3").gsub(/[iI+]/, "1").gsub(/[oO+]/, "0").gsub(/[uU+]/, "6")