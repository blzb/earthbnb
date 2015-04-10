package com.devf.bnb

class Pais {
    String nombre
    String descripcion
    static hasMany =[casas: Casa]
    static constraints = {
    }
    public String toString(){
        nombre
    }
}
