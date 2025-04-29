object nave{
    const property pasajeros = []

    method cuantosPasajeros() = pasajeros.size()
    method estaEquilibrada() = self.pasajeroConMayorVitalidad().vitalidad() < self.pasajeroConMenorVitalidad().vitalidad() * 2
    method pasajeroConMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
    method pasajeroConMenorVitalidad() = pasajeros.min({p => p.vitalidad()})
    method elElegidoEstaEnLaNave() = pasajeros.any({p => p.esElElegido()})
    method chocar(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }
    method acelerar() = pasajeros.filter({p => p.esElElegido()})
}

object neo{
    var energia = 100

    method esElElegido() = true
    method saltar(){
        energia = energia / 2
    }
    method vitalidad(){
        return energia * 0.1
    }
}

object morfeo{
    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false
    method saltar(){
        vitalidad = 0.max(vitalidad - 1)
        estaCansado = !estaCansado 
    }
    method vitalidad() = vitalidad
}

object trinity{
    method esElElegido() = false
    method saltar(){}
    method vitalidad() = 0
}