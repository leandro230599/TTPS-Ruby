# Ejercicio similar al 21, pero yo le debo pasar como parametro en un arreglo los numeros a evaluar de cual son multiplo
# multiplos_de([3, 5], 100)
# => 315
# multiplos_de([3, 5, 17, 28, 65], 100_000)
# => 92820

def multiplos_de(arr,tope)
    return tope.times.select {|x| arr.all? {|n| x%n===0}}.reduce(0,:+)
end

puts multiplos_de([3, 5],100)
puts multiplos_de([3, 5, 17, 28, 65], 100_000)