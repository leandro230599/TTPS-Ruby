# Hay que modificar el ejercicio 1 para que en lugar de recibir un arreglo, los reciba como parametros separados
# ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)
# => [0, 1, 2, 3, 4, 5, 6, 9, 10]

def ordenar(*args)
    return args.sort
end

p ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9)