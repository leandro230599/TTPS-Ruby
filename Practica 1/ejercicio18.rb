# Lo mismo que el ejercicio 17, pero en lugar de solicitar que se ingrese un nombre por entrada estandar osea teclado, se le debe pasar el nombre por parametro al script
# $ ruby script.rb C-3PO
# ¡Hola, C-3PO!
puts "¡Hola, #{ARGV.join(' ')}!"