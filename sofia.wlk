import categorias.*
import bonos.*

object sofia {
    var bonoResultado = bonoNulo
    var categoria = cadete

    method categoria(_categoria) {
	  categoria = _categoria   
	}

    method bonoResultado(_bonoResultado) {
		bonoResultado = _bonoResultado  
	} 

    method sueldoNeto() {
        return categoria.neto() * 1.3
    }

    method sueldo() {
        return self.sueldoNeto() + bonoResultado.monto(self)

    }

}
