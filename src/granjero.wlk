import plantas.*
object hector {
	const property imagen= "player.png"
	var property posicion= game.at( 0,0)
	
	method plantarMaiz()
	{
		game.addVisualIn(new Maiz(),self.posicion().clone())
	}
	
	method plantarTrigo()
	{
		game.addVisualIn(new Trigo(),self.posicion().clone())
	}
	
	method plantarTomaco()
	{
		game.addVisualIn(new Tomaco(),self.posicion().clone())
	}
	
	method regar(){
		
		if(not game.colliders(self).isEmpty() ){
		  game.colliders(self).head().serRegada(self)
		}
		else { game.say(self,"no Hay Planta")}
		
	}
	
}
