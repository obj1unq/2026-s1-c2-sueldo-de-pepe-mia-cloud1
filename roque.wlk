import categorias.*
import bonos.*


object roque {
    var bonoResultado = bonoNulo 

    method bonoResultado(_bonoResultado) {
        bonoResultado = _bonoResultado
    }

    method sueldoNeto() {
        return 28000
    }

    method sueldo() {
        return self.sueldoNeto() + bonoResultado.monto(self) + 9000
    }
}