# Los simbolos en Ruby son como variables que no se les asigna un valor, sino que siempre tendran el mismo ID, entonces suelen ser utiles su uso con hashes o cosas por el estilo que se necesita un identificador
# Por ejemplo "hola".objects_id capaz me da ID 560, si lo vuelvo a ejecutar me da capaz 562, no mantiene su ID a pesar de ser el mismo string, en cambio :hola.objects_id, lo ejecute las veces que lo ejecute, me dara el mismo ID
puts "SYMBOL"
puts "hola".object_id
puts "hola".object_id
puts :hola.object_id
puts :hola.object_id

# Los string son cadena de caracteres que para crearse en ruby se usa el New o solo el contenido
puts "STRING"
a = "Este es un string asi nomas"
b = String.new("Este es un string con el String.New")
c = String("Este es un string con el String sin el new")
puts a
puts b
puts c

# Los array en Ruby son como en otros lenguajes, lo puedo crear harcodeandole los valores, si uso el new el primero parametro es la cantidad de elementos que tendra, y el segundo los valores, tambien puedo ponerle un bloque con condiciones para setear valores, o directamente setearlo con una condicion como array = Array.new(5){Array.new(3)} creara un array de 5 espacios y en cada espacio habra un vector de 3 espacios vacio
puts "ARRAY"
array = [5,6,7,8]
array1 = Array.new(5) {|x| x = x*2+1}
puts array1

# Los hash son como los array pero pueden indexarse con cualquier cosa, cada llave va asociada a un valor, es como un diccionario donde una palabra (llave) esta asociada a una definicion (valor)
puts "HASH"
# Investigar mas sobre Hash.new que no entendi bien
hash1 = {:nombre=>"Leandro",:apellido=>"Lopez"} # Aca estoy utilizando los simbolos
hash2 = Hash["nombre":"Leandro", "apellido":"Lopez"]
hash3 = Hash[nombre:"Leandro", apellido:"Lopez"] # Aca utilizo los simbolos tambien, pero al final pongo los dos puntos
puts hash4.values