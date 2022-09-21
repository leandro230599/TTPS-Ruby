# Aca debo hacer una funcion que haga la suma de todos los numeros naturales que sean multiplos de 3 y 5, pero que sean menores a un tope ingresado por parametro
# multiplos_de_3_y_5(100)
# => 315

def multiplos_de_3_y_5(tope)
    suma = 0
    #tope.times do |x|
    #    if (x%3===0 && x%5===0) === 0
    #        suma+=x
    #    end
    #end
    return tope.times.select {|x| x%3===0 && x%5===0}.reduce(0,:+)
end

puts multiplos_de_3_y_5(100)