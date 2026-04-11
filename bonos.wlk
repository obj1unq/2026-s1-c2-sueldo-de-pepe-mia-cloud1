object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}
object bonoMontoFijo {
	method monto(empleado) { return 800} 
}


// agregar bonos por presentismo  
object bonoPresentismoNormal {
	method monto(empleado) {
		return if (empleado.cantidadDeFaltas() == 0) { 2000 } 
		else if (empleado.cantidadDeFaltas() == 1) { 1000 } 
		else {0}
	}
}

object bonoAjuste {
	method monto(empleado) {
		return if (empleado.cantidadDeFaltas() == 0) {100} // se ve medio feito i know
		else {0}
	}
}

object bonoDemagogico {
	method monto(empleado) {
		return if (empleado.sueldoNeto() < 18000) { 500 }
		else {300}
	}
}
object bonoNulo {
	method monto(empleado) { return 0 } 
}
