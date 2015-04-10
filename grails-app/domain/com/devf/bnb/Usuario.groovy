package com.devf.bnb

class Usuario extends ShiroUser {
    String nombreCompleto
    String email
    static hasMany = [reservas: Reserva]
    static constraints = {
    }
    public String toString(){
        nombreCompleto
    }
}
