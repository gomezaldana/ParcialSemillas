import PLANTAS.*

class Parcela{
	const property ancho
	const property largo
	const property plantas=[]
	const property horasSol
	method superficie()= ancho*largo
	method plantasQueTolera()=if(ancho>largo){superficie/5} else {self.superficie()/3+largo} 
	method tieneComplicaciones()=plantas.any(){(p=>p.toleraAlSol()<horasSol)}
	method cantidadPlantasQueHay()=plantas.size()
	method hayEspacioParaAgregar()=self.cantidadPlantasQueHay+1<=self.plantasQueTolera()
	method recibeMasSolDeLoQueTolera(planta)//no se hacerlo=planta.toleraAlSol()<horasSol+2
	method plantarPlanta(planta){
		if (self.recibeMasSolDeLoQueTolera(planta) or not self.hayEspacioParaAgregar()){
			self.error("no se puede plantar")
		}
		else{
			plantas.add(planta)	
		}
	}
	method esEcologica()=not self.tieneComplicaciones()
	method esIndustrual()=self.cantidadPlantasQueHay()<=2
}
