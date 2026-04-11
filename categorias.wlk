
object gerente {
	method neto() { return 15000 } 
}

object cadete {
	method neto() { return 20000 }
}

object vendedor {
	var hayMuchasVentas = false

	method activarAumentoPorMuchasVentas() {
		hayMuchasVentas = true
	}

	method desactivarAumentoPorMuchasVentas() {
		hayMuchasVentas = false
	}
	method neto() { 
		return if (hayMuchasVentas) { 16000 * 1.25}
		else { 16000 }
	 } 
}

object medioTiempo {
	var categoriaBase = cadete 
	method categoriaBase(_categoriaBase) {
		 categoriaBase = _categoriaBase
	}
	method neto() {
		return categoriaBase.neto() / 2
	}
}