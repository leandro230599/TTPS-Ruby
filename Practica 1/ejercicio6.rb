# Debo verificar si hay forma de hacer la linea 14, los dos gsub, en uno solo

def tiempo_en_palabras(tiempo)
    word = {
            0..10 => "Son las #{tiempo.hour} en punto",
            11..20 => "Son las #{tiempo.hour} y cuarto", 
            21..34 => "Son las #{tiempo.hour} y media", 
            35..44 => "Son las #{tiempo.hour+1} menos veinticinco", 
            45..55 => "Son las #{tiempo.hour+1} menos cuarto",
            56..59 => "Casi son las #{tiempo.hour+1}"
           }
    strWord = word.select {|minutos| minutos === tiempo.min }.values.first.to_s
    puts strWord.downcase.include? "son las 1"
    puts strWord.gsub(/son las 1 /, 'es la 1 ').gsub(/Son las 1 /, 'Es la 1 ')
end

tiempo_en_palabras(Time.new(2022, 10, 21, 0, 57))