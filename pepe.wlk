import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	method categoria(_categoria) {
	  categoria = _categoria   //permite cambiar la categoria de pepe
	}
	method bonoPresentismo(_bonoPresentismo) {
		bonoPresentismo = _bonoPresentismo //permite cambiar el bono por presentismo de pepe
	}
	method bonoResultado(_bonoResultado) {
		bonoResultado = _bonoResultado  // permite cambiar el bono por resultado de pepe
	}
	method cantidadDeFaltas(_cantidadDeFaltas) {
		cantidadDeFaltas= _cantidadDeFaltas
	}
	
	method sueldoNeto() { return categoria.neto() }
	
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
		 
	}
}
