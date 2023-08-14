object ballesta {
	var fueUsada = false
	var flechas = 10
	method usar() { 
		if (self.estaCargada()) {
			flechas -= 1
			fueUsada = true
		}
	}
	method estaCargada() = flechas >= 1
	method potencia() = 4
}

object jabalina {
	var fueUsada = false
	var estaCargada = true
	method usar() { 
		if (estaCargada) {
		   estaCargada = false
		   fueUsada = true
		}
	}
	method potencia() = 30
}