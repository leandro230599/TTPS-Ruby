# La forma para convertir cualquier objeto en string es usando el metodo ".to_s", tambien se puede con ".to_str" pero no todos los objetos permiten usar este metodo. Tambien hay otro metodo el cual es ".join" que permite acortar elementos de un array, tipo si tengo [1,2,3,4,5,6] si uso el metodo join con ese array devolvera un string con "123456" y si uso algun argumento con ese metodo, lo metera al medio tipo con .join("-") me devolvera 1-2-3-4-5-6
a = [1,2,3,4,5,6]
puts a
puts a.to_s
# puts a.to_str Este metodo esta comentado porque no funciona, da error con array
puts a.join("//")