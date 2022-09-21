# Se debe mejorar el ejercicio 13 para que al llamar a listar_mejorada, la cual puede recibir opcionalmente un parametro llamado "pegamento" valor por defecto ": ", el cual sirve para unir clave valor
# listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ")
# => "1. perros -> 2\n2. gatos -> 2\n3. peces -> 0\n4. aves -> 0"

def listar_mejorada (hash, second= ': ')
    x=1
    string = ''
    hash.each do |key,value|
        string= string+"#{x}. #{key}#{second}#{value} \n"
        x+=1
    end
    return string
end

puts listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, " -> ")