package com.devf.bnb

class Reserva {
    Date fechaInicio
    Date fechaFin
    Boolean pagado
    static belongsTo = [usuario: Usuario, casa: Casa]
    static constraints = {
    }
    public String toString(){
        ""+fechaInicio+" al "+fechaFin
    }
}
