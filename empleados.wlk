//Escribir aqui los objetos

object gimenez {
    var fondoParaSueldos = 300000

    method fondo() {
        return fondoParaSueldos
    }

    method pagarSueldo(empleado) {
        fondoParaSueldos -= empleado.sueldo()
        empleado.cobrarSueldo()
    }

}


object galvan {
    var property sueldo = 15000

    var dineroDisponible = 0

    var deuda = 0

    method cobrarSueldo() {
        if(deuda >= sueldo) {
            deuda -= sueldo
        } else {
            dineroDisponible += sueldo - deuda
            deuda = 0 
        }   
    }

    method gastar(dinero) {
        dineroDisponible -= dinero
        if(dineroDisponible < 0) {
            deuda += dineroDisponible * (-1)
            dineroDisponible = 0
        }
    }

    method deuda() {
        return deuda
    }

    method dinero() {
        return dineroDisponible
    } 
}


object baigorria {
    const valorPorEmpanadaVendida = 15

    var empanadasVendidas = 0

    var totalCobrado = 0

    method vender(cantidadDeEmpanadas) {
        empanadasVendidas += cantidadDeEmpanadas
    }

    method sueldo() {
        return valorPorEmpanadaVendida * empanadasVendidas
    }

    method cobrarSueldo() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }

    method totalCobrado() {
        return totalCobrado
    }  
}