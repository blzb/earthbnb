package com.devf.bnb
import org.apache.shiro.SecurityUtils

class ReservacionController {

    def hechas(){
        def usuario 
        if(SecurityUtils.subject.principal instanceof Long){
            usuario = Usuario.get(SecurityUtils.subject.principal)           
        }else{
            usuario = Usuario.findByUsername(SecurityUtils.subject.principal)           
        }
        [usuario: usuario]
    }
    def explorar(){
        def casas 
        if(params.ciudad){
            def ciudad = params.ciudad
            casas = Casa.where{
                ciudad.id == ciudad
            }.list()
        }else{
            casas = Casa.list()
        }
        [ciudades: Ciudad.list(), casas: casas]
    }
    def detail(){
        [casa: Casa.get(params.id)]
    }
    def reservar(){        
        [casa: Casa.get(params.id)]
    }
    def guardar(){
        def fechaInicio = new Date().parse("dd/MM/yyyy", params.fechaInicio)
        def fechaFin = new Date().parse("dd/MM/yyyy", params.fechaFin)
        def pagado
        def casa = Casa.get(params.id)
        
        if(params.tarjeta){
            pagado = true
        }else{
            pagado = false
        }
        def usuario 
        if(SecurityUtils.subject.principal instanceof Long){
            usuario = Usuario.get(SecurityUtils.subject.principal)           
        }else{
            usuario = Usuario.findByUsername(SecurityUtils.subject.principal)           
        }
        new Reserva(
            fechaInicio: fechaInicio,
            fechaFin: fechaFin,
            pagado: pagado,
            casa: casa,
            usuario: usuario
        ).save(failOnError: true)        
    }
}
