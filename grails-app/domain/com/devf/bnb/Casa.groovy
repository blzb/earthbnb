package com.devf.bnb

class Casa {
    String titulo
    String descripcion
    String direccion
    Double lat
    Double lon
    Double precio
    Double capacidad    
    static hasMany = [reservas: Reserva]
    static belongsTo = [ciudad: Ciudad, tipoAlojamiento: TipoAlojamiento, tipoHabitacion: TipoHabitacion]    
    static constraints = {
        titulo()
        precio()
        tipoAlojamiento()
        tipoHabitacion()
        descripcion()
        direccion()
        lat()
        lon()
        reservas()
        
    }
    public String toString(){
        titulo
    }
}
