class Maiz{
	var property imagen= "corn_baby.png"
	var property adulta=false
	
	method serRegada(alguien){
		if(adulta= false){
		  adulta=true
		  imagen= "corn_adult.png"		
		}
	
	}
}

class Trigo{
		var property imagen= "wheat_0.png"
		var property evolucion=0
		/*method imagen()= "wheat_"+etapa.toString()+"png"
		 * 
		 *method regar(){ etapa=(etapa+1)%4 }
		 *   
		 */
		
		method serRegada(){
			
			if(evolucion = 0){
				evolucion=1
				imagen="wheat_1.png"
			}
			if(evolucion = 1){
				evolucion=2
				imagen="wheat_2.png"
			}
			if(evolucion = 2){
				evolucion=3
				imagen="wheat_3.png"
			}
			
		    if(evolucion = 3){
			    evolucion=0
				imagen="wheat_0.png"
		    }
		}	
}

class Tomaco{
		var property imagen= "tomaco_baby.png"
		var property posicion
		method serRegada(){
			game.removeVisual(self)
			
			if(posicion.validateX()){
			
			posicion.up(1)
			
			game.addVisual(self)
			}
			else { 
			 posicion=posicion.down(9)
			 
			 game.addVisual(self)
			}
		}
}