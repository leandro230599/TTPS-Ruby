# Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para probarlo. Reverso debe contener los siguientes métodos:
# 1. #di_tcejbo: Imprime el object_id del receptor en espejo (en orden inverso).
# 2. #ssalc: Imprime el nombre de la clase del receptor en espejo.

module Reverso
    
    def di_tcejbo
        self.object_id.to_s.reverse
    end

    def ssalc
        self.class.to_s.reverse
    end
end

class Prueba 

    include Reverso

end

p = Prueba.new #  Instancio la clase dado a que use include, con extend no hacia falta hacer el new
puts p.di_tcejbo
puts p.ssalc