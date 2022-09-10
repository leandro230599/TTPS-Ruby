# Pide reemplazar { por do\n y } por \nend tipo de 3.times { |i| puts i } a 3.times do\n |i| puts i \nend
def reemplazar (str)
    return str.gsub(/[{}]/, '{' => 'do\n', '}' => '\nend"') 
end
puts reemplazar("3.times { |i| puts i }")