package com.devf.bnb

class Ciudad {
    String nombre
    String titulo
    String descripcion
    static constraints = {
        descripcion(size: 0..65000)
    }
}
