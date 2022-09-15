# Hay que modificar la funcion anterior para que solo considere el segundo parametro cuando se trate de palabras completas
#Ejemplo el string "La casa de la esquina tiene la puerta roja y la ventana blanca." al usar el otro string "la" devolvera 4
def contar_palabras (strUno, strDos)
    return strUno.downcase.scan(/(^(#{strDos}\s))|(\s#{strDos}\s)/).count
end

puts contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")