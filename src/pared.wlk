import wollok.game.*

object pared {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "paredLadrillos2.jpg"
	var position = game.center()

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
	method centrar(){
		position = game.center()
	}
	
	method moverseAlAzar(){
		const x = 0.randomUpTo(game.width()).truncate(0)
   		const y = 0.randomUpTo(game.height()).truncate(0)
   		position = game.at(x,y) 
	}
}