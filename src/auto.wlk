import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var position = game.at(0,0)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method position(nuevaPosicion) { position = nuevaPosicion }
	
	//movimiento
	method moverADerecha(){
		position = position.right(1)
		self.image("autitoVerde.png")
	}
	method moverAbajo(){
		position = position.down(1)
		self.image("autitoAzul.png")
	}
	method moverAIzquierda(){
		position = position.left(1)
		self.image("autitoVerde.png")
	}
	method moverArriba(){
		position = position.up(1)
		self.image("autitoAzul.png")
	}
	method reiniciarPos(){
		position = game.at(0,0)
		self.image("autitoRojo.png")
	}
	
}