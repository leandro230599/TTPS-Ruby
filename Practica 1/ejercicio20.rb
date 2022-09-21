# Aca hay que investigar metodos de Ruby

# • Obtener la lista de ancestros (superclases) de una clase
     object.class.ancestors

# • Conocer la lista de métodos de una clase.
     object.methods

# • Conocer la lista de métodos de instancia de una clase.
     object.instance_methods(false)

# • Conocer las variables de instancia de una clase.
     object.something o object.instance_variables 

# • Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado
# con attr_reader o similar) accediéndolo desde fuera de éste.
     object.instance_variable_get("@#{name}") o object.instance_variable_get(("@thing_%d" % 2).to_sym)

# • Establecer el valor de una variable de instancia de un objeto (sin utilizar un método gene‑
# rado con attr_writer o similar) desde fuera de éste.
     object.instance_variable_set("@#{name", 55) o object.instance_variable_set(:@thing_2, 55)