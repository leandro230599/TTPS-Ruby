# Para castear de string a simbolo se utiliza el metodo .to_sym
a = "hola".object_id
b = "hola".object_id
c = "hola".to_sym
d = "hola".to_sym
c = c.object_id
d = d.object_id
puts a,b
puts c,d