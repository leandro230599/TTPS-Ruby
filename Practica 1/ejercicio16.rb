# Parecido al ejercico 15, pero aca debe ser mas generico, se debe mandar un parametro con la cantidad de posiciones a rotar
# rot("¡Bienvenidos a la cursada 2022 de TTPS Opción Ruby!", 13)
# => "¡Ovrairavqbf n yn phefnqn 2022 qr GGCF Bcpvóa Ehol!"

def rot (string,pos)
    cadena = ''
    const1 = 97
    const2 = 65
    string.chars().each do |char|
        case char
        when 'a'..'z'
            char=(char.ord + pos - const1) % 26 + const1
        when 'A'..'Z'
            char=(char.ord + pos - const2) % 26 + const2
        else
          char=char.ord
        end
        cadena+=char.chr
    end
    return cadena
end
puts rot("¡Bienvenidos a la cursada 2022 de TTPS Opción Ruby!", 14)