# Se debe crear unas funciones que dado un codigo RGB se pueda obtener sus valores en notacion entera y hexadecimal. La notacion entera se define como "red + green * 256 + blue * 256 * 256" y la hexadecimal como el resultado de expresar en base 16 el valor de cada color y concatenarlos en orden
# notacion_hexadecimal([0, 128, 255])
# => '#0080FF'
# notacion_entera([0, 128, 255])
# => 16744448

def notacion_hexadecimal(arr)
    return "##{arr.map {|x| '%02x'%x}.join()}"  
end

def notacion_entera(arr)
    return arr[0]+arr[1]*256+arr[2]*256*256
end

puts notacion_hexadecimal([0, 128, 255])
puts notacion_entera([0, 128, 255])