# Funcion contar con dos parametros string, cuantas veces aparece el segundo dentro del primero Ejemplo el string "La casa de la esquina tiene la puerta roja y la ventana blanca." al usar el otro string "la" devolvera 5
def contar (strUno, strDos)
    return strUno.downcase.scan(/(?=#{strDos})/).count
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")