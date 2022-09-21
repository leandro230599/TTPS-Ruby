# Suponiendo que se me brinda el modulo del ejercicio 2, como lograria hacer que ande el programa siendo que se me envian los parametros dentro de un arreglo
# entrada = [10, 9, 1, 2, 3, 5, 7, 8]
# Dada `entrada', invocá a #ordenar utilizando los valores que contiene la variable
# ordenar(entrada) # <= Esto no funciona. Corregí esta invocación para que funcione.

def ordenar(*args)
    return args.sort
end

entrada = [10, 9, 1, 2, 3, 5, 7, 8]
p ordenar(*entrada)