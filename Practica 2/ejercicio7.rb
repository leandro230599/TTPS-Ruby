module ToString
    def to_s
      "#{self.email} (#{self.role.class})"
    end
end

class Usuario
    
    include ToString
    attr_accessor :usuario, :clave, :email, :role
    def initialize (usuario, clave, email, role)
        self.usuario = usuario
        self.clave = clave
        self.email = email
        self.role = role
    end

    def puede_ver?(doc)
        self.role.puede_ver?(doc)
    end

    def puede_modificar?(doc)
        self.role.puede_modificar?(doc,self)
    end

    def puede_borrar?(doc)
        self.role.puede_borrar?(doc)
    end
end

class Documento
    attr_accessor :creador, :contenido, :publico, :borrado

    def initialize(usuario, publico = true, contenido = '')
        self.creador = usuario
        self.publico = publico
        self.contenido = contenido
        self.borrado = false
    end

    def borrar
        self.borrado = true
    end

    def puede_ser_visto_por?(usuario)
        usuario.puede_ver? self
    end
    
    def puede_ser_modificado_por?(usuario)
        usuario.puede_modificar? self
    end
    
    def puede_ser_borrado_por?(usuario)
        usuario.puede_borrar? self
    end

end

class Role
    def puede_ver?(doc)
        false
    end

    def puede_modificar?(doc,user)
        false
    end

    def puede_borrar?(doc)
        false
    end
end

class Lector < Role
    def puede_ver?(doc)
        doc.publico
    end;
end

class Redactor < Lector
    def puede_modificar?(doc,user)
        doc.creador == user
    end
end

class Director < Role
    def puede_ver?(doc)
        true
    end

    def puede_modificar?(doc,user)
        !doc.borrado
    end
end

class Administrador < Director
    def puede_borrar?(doc)
        true
    end
end


lector = Lector.new
director = Director.new
admin = Administrador.new
redactor = Redactor.new

leandro = Usuario.new("Leandro",1234, "mail1", lector)
delicia = Usuario.new("Delicia",124134, "mail2", redactor)
hector = Usuario.new("Hector",131, "mail3", admin)
micaela = Usuario.new("Micaela",535, "mail4", director)

doc1 = Documento.new(leandro,true,"Habia una vez")
doc2 = Documento.new(leandro,false,"Habia una vez cacacaca")
doc3 = Documento.new(delicia,false,"Mamut")
doc6 = Documento.new(delicia,true,"Mamuteee")
doc4 = Documento.new(hector,false,"Nazi")
doc5 = Documento.new(micaela,false,"Gor")

puts "Usuario 1 "
puts doc1.puede_ser_visto_por?(leandro)
puts doc1.puede_ser_modificado_por?(leandro)
puts doc1.puede_ser_borrado_por?(leandro)
puts ""
puts doc2.puede_ser_visto_por?(leandro)
puts ""
puts "Usuario 2"
puts doc3.puede_ser_visto_por?(delicia)
puts doc6.puede_ser_visto_por?(delicia)
puts doc3.puede_ser_modificado_por?(delicia)
puts doc3.puede_ser_modificado_por?(leandro)
puts doc3.puede_ser_borrado_por?(delicia)
puts ""
puts "Usuario 3"
puts doc4.puede_ser_visto_por?(hector)
puts doc4.puede_ser_modificado_por?(hector)
puts doc4.puede_ser_borrado_por?(hector)
puts ""
puts "Usuario 4"
puts doc5.puede_ser_visto_por?(micaela)
puts doc5.puede_ser_modificado_por?(micaela)
puts doc5.puede_ser_borrado_por?(micaela)
puts "Info del eje 7"
puts leandro.to_s
puts delicia.to_s
puts hector.to_s
puts micaela.to_s