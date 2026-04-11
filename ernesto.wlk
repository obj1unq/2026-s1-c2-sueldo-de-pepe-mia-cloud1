import bonos.*
import categorias.*
import pepe.*

object ernesto {
    var compañero = pepe 
    var bonoPresentismo = bonoNulo
    
    method compañero(_compañero) {
        compañero = _compañero
    }

    method bonoPresentismo(_bonoPresentismo) {
        bonoPresentismo = _bonoPresentismo
    }

    method cantidadDeFaltas() {
        return 0
    }

    method sueldoNeto() {
        return compañero.sueldoNeto()
    }

    method sueldo() {
        return self.sueldoNeto() + bonoPresentismo.monto(self)
    }
}
