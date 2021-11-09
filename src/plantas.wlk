import PARCELAS.*
class Planta{
	const property anioDeObtencion //cuando se crea
	const property altura //cuando se crea
	var property toleraAlSol//depende exclusivamente de cada especie
	const property esFuerte = self.toleraAlSol()>10//para todos
	const property daSemillas =self.esFuerte() //or //condición alternativa
	const property espacioQueOcupa//depende especie
	method esIdealPara(parcela,planta){
		if (parcela.esEcologica() and planta.esIdealPara(parcela,self) or 
	}
	
	
}

class Menta inherits Planta{
	override method toleraAlSol()=6//no se si esta bien
	override method daSemillas()=super() or self.altura()>0.4//su altura es mayor a 0.4 metros.
	override method espacioQueOcupa()=self.altura()*3
	override method esIdealPara(parcela)=parcela.superficie()>6
}

class Soja inherits Planta{
	override method toleraAlSol(){
		if (self.altura()<0.5) {return 6}
		else if (self.altura()>0.5 and self.altura()<1) {return 7}
		else {return 9}
	}
	override method daSemillas()=super() or (self.anioDeObtencion()>2007 and self.altura()>1)
	override method espacioQueOcupa()=self.altura()/2//fijate si se divide asi
	override method esIdealPara(parcela)=parcela.horasSol()==self.toleraAlSol()
}

class Quinoa inherits Planta{
	override method espacioQueOcupa()=0.5
	override method daSemillas()=super() or self.anioDeObtencion()<2005
	override method esIdealPara(parcela)=parcela.plantas().all{p=>p.altura()<1.5}
}

class sojaTransgenica inherits Soja{
	override method daSemillas()=false
	override method esIdealPara(parcela)=parcela.plantasQueTolera()==1
 
}	
	
class hierbabuena inherits Menta{	
	override method espacioQueOcupa()=super()*2

}
//self.error("no se puede plantar")
//assert.throwsExceptionWithMessage
	
	

