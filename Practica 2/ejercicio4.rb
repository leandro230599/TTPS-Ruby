# Se debe hacer un metodo que reciba N cantidad de parametros de cualquier tipo e imprime en pantalla cada parametro en string y la cantidad de caracteres que lo representa
# longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)
# Debe imprimir:
# "9" --> 1
# "2022-09-14 13:22:10 +0000" --> 25
# "Hola" --> 4
# {:un=>"hash"} --> 13
# ruby --> 4

def longitud (*args)
    args.each {|x| puts "#{x.to_s} --> #{x.to_s.length}"}
end

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby)