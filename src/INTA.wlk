import parcelas.*
object inta{
	const property parcelas=#{}
	method promedioPlantas()=parcelas.sum({p=>p.cantidadPlantasQueHay()})/parcelas.size()
	method lasQueTienenMasDe4Plantas()= parcelas.map({p=>p.tieneMasDeCuatroPlantas()})
	method laMasAutosustentable()=self.lasQueTienenMasDe4Plantas().max({p=>p.porcentajeBienAsociadas()})
}