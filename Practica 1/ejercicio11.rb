# El metodo send es util utilizarlo sobre metodos publicos y privados, en cambio public_send solo se puede utilizar en metodos publicos, si se busca utilizar en metodos privados, buscara invocar el metodo method_missing. Buscaria utilizar el metodo public_send si quiero respetar la encapsulacion y send si no me interesa la encapsulacion