# Se debe crear una funcion llamada rot13 que encripte el string recibido utilizando el algoritmo ROT13
# rot13("¡Bienvenidos a la cursada de TTPS Opción Ruby!")
# => "¡Ovrairavqbf n yn phefnqn qr GGCF Bcpvóa Ehol!"

def rot13(cadena)
    arr = cadena.chars()
    string = ''
    arr.each do |char| 
        case char
        when 'a'..'m', 'A'..'M'
          char=char.ord + 13
        when 'n'..'z', 'N'..'Z'
          char=char.ord - 13
        else
          char=char.ord
        end
        string+=char.chr
    end
    return string
end

puts rot13("¡Bienvenidos a la cursada de TTPS Opción Ruby!")