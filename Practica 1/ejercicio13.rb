# Se debe crear una funcion llamada listar que recibe un Hash y debe retornar un string con los pares clave valor formateados en una lista ordenada en texto plano
# listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })
# => "1. perros: 2\n2. gatos: 2\n3. peces: 0\n4. aves: 0"
def listar (hash)
    x=1
    string = ''
    hash.each do |key,value|
        string= string+"#{x}. #{key}: #{value} \n"
        x+=1
    end
    return string
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })