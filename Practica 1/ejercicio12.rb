# Pide crear una funcion donde se recibe como parametro un arreglo con distintos string, y se debera devolver un arreglo con la longitud del string recibio en esa posicion del arreglo tipo [hola, que, tal] debe devolver [4,3,3]

def longitud (arr)
    return arr.map {|item| item.length}
end
puts longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2022'])