# Debo hacer un metodo que opcionalmente recibe un parametro de tipo Time y debo calcular el tiempo en minutos que falta para ese momento, si no se recibe parametro, se asume que es para la medianoche de hoy
# cuanto_falta? Time.new(2032, 12, 31, 23, 59, 59)
# => Retorna la cantidad de minutos que faltan para las 23:59:59 del 31/12/2032
# cuanto_falta?
# => Retorna la cantidad de minutos que faltan para la medianoche de hoy

def cuanto_falta? (tiempo = Time.new(Time.now.year, Time.now.month, Time.now.day, 0, 0, 0)+(60*60*24)) # Este calculo sirve para que se fije la fecha de mañana y no hoy, osea a las 00 del dia siguiente, cuanto falta para que termine este dia, si quito ese calculo, me dice hace cuanto empezo este
    ahora = Time.now.to_i/60
    return "Faltan #{(tiempo.to_i/60)-ahora} minutos"
end

puts cuanto_falta?(Time.new(2022, 9, 21, 02, 30, 31)) # 17 minutos faltan
puts cuanto_falta?(Time.new(2032, 12, 31, 23, 59, 59)) # 5407065 minutos faltan
puts cuanto_falta?
