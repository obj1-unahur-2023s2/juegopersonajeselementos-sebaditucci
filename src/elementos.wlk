import armas.*

object castillo {
	var nivelDefensa = 150
	method nivelDefensa() = nivelDefensa.min(200)
	method altura() = 20
	method recibirAtaque(arma) {nivelDefensa -= arma.potencia()}
	method otorgarValor() = nivelDefensa / 5
	method recibirTrabajo() {nivelDefensa += 20}
}

object aurora {
	var estaViva = true
	method altura() = 1
	method recibirAtaque(arma) { if (arma.potencia() >= 10) { estaViva = false } }
	method otorgarValor() = 15
	method recibirTrabajo() {}
}

object tipa {
	var alturaActual = 4
	method altura() = alturaActual
	method recibirAtaque(arma) {}
	method otorgarValor() = alturaActual * 2
	method recibirTrabajo() { alturaActual += 1 }
}
