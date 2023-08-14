import armas.*
import elementos.*

object luisa {
	var property personajeActivo 
	method apareceElemento(elemento) {personajeActivo.encontrarElemento(elemento)}
}

object floki {
	var property armaActual 
	method encontrarElemento(elemento) { if (armaActual.estaCargada()) { elemento.recibirAtaque(armaActual) } }
}

object mario {
	var valorRecolectado
	var ultimoElementoEncontrado 
	method encontrarElemento(elemento) { 
		valorRecolectado += elemento.otorgarValor()
		elemento.recibirTrabajo()
		ultimoElementoEncontrado = elemento
	}
	method esFeliz() = valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10
}