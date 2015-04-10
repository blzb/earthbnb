import com.devf.bnb.*
import org.apache.shiro.crypto.hash.Sha256Hash
class BootStrap {

    def init = { servletContext ->
        
        def adminRole = new ShiroRole(name:"Administrador" )
        adminRole.addToPermissions("*:*")
        adminRole.save()
        
        def userRole = new ShiroRole(name: "UsuarioComun")
        userRole.addToPermissions("*:*")
        userRole.save()
        
        Usuario user = new Usuario(
            username:"admin",
            passwordHash: new Sha256Hash("admin").toHex(),
            nombreCompleto: "Administrador",
            email:"test@example.org"
        )
        user.addToRoles(adminRole)
        user.save()
        
        Usuario angel = new Usuario(
            username:"angel",
            passwordHash: new Sha256Hash("angel").toHex(),
            nombreCompleto: "Angel Pimentel",
            email:"angelpmza@gmail.com"
        )
        angel.addToRoles(userRole)
        angel.save()
        
        
        ["Departamento", "Casa", "Bed & Breakfast", "Loft","Cabaña", "Villa", "Castillo", "Dormitorio compartido", "Casa en arbol", "Barco", "Avion", "Autocaravana", "Iglu", "Faro", "Yurta", "Tipi","Cueva", "Isla","Challet", "Casa nuev", "Choza", "Tren", "Tienda de campaña"].each{
            new TipoAlojamiento(nombre:it).save()
        }
        ["Casa/apto. entero", "Habitacion privada", "Habitacion compartida"].each{
            new TipoHabitacion(nombre: it).save()
        }
        
               
        new Ciudad(nombre: "Puerto Vallarta", titulo :"Un paraíso en la tierra!" , descripcion: "Puerto Vallarta es una ciudad y uno de los 125 municipios del estado de Jalisco, México. El municipio se localiza en la Región Costa Norte del estado" ).save()
        new Ciudad(nombre: "Cancún", titulo: "Caribe Mexicano", descripcion:"Cancún, es una ciudad mexicana con desarrollo turístico de nivel internacional certificado por la Organización Mundial del Turismo.").save()
        new Ciudad(nombre: "Baja California Sur" , titulo: "Paraíso Turístico", descripcion:"Baja California Sur es uno de los 31 estados que junto con el Distrito Federal conforman las 32 entidades federativas de México, se ubica al noroeste del territorio, ocupando la mitad sur de la península de California").save()
        new Ciudad(nombre: "Oaxaca", titulo: "Patrimonio Cultural de la Humanidad por la UNESCO", descripcion:"Posee cumbres de más de tres mil metros de altura (casi diez mil pies), cavernas que se encuentran entre las más profundas del mundo, playas vírgenes, selvas escondidas y valles luminosos que acogen poblaciones donde se funden, como en un crisol, las culturas de todos los pueblos que han pasado por su piel.").save()
        new Ciudad(nombre:"Distrito Federal",  titulo:"Chilangolandia", descripcion:"a Ciudad de México, Distrito Federal, o en su forma abreviada México, D. F., es la capital y sede de los poderes federales de los Estados Unidos Mexicanos").save()
        
        new Casa(
            titulo:"La casa numero unno",            
            descripcion:"Esta es una casa muy bonita y asi",
            direccion: "Constituyentes 2231",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Oaxaca"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Departamento"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        new Casa(
            titulo:"La casa numero dos",            
            descripcion:"Esta es una casa muy bonita y asi",
            direccion: "Constituyentes 2231",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Oaxaca"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Departamento"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        new Casa(
            titulo:"La casa numero tres",            
            descripcion:"Esta es una casa muy bonita y asi",
            direccion: "Constituyentes 2231",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Distrito Federal"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Departamento"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        new Casa(
            titulo:"La casa numero cuatro",            
            descripcion:"Esta es una casa muy bonita y asi",
            direccion: "Constituyentes 2231",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Distrito Federal"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Departamento"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        new Casa(
            titulo:"Loft en Vallarta",            
            descripcion:"Cómodo Loft en Vallarta. Perfecto para Luna de miel",
            direccion: "Puerto Vallarta 650",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Puerto Vallarta"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Loft"),
            tipoHabitacion: TipoHabitacion.findByNombre("Habitacion privada")
        ).save()
        new Casa(
            titulo:"Cabaña en Cancún",            
            descripcion:"Se vende pescado frito con limón",
            direccion: "Blvd. Kukulcan 5400",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Cancún"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Cabaña"),
            tipoHabitacion: TipoHabitacion.findByNombre("Habitacion privada")
        ).save()
        new Casa(
            titulo:"Justo en la paz de Baja",            
            descripcion:"Bed & Breakfast para sprinbreakers",
            direccion: "Av. de la Paz 750",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Baja California Sur"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Bed & Breakfast"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        new Casa(
            titulo:"Oaxaca, casa de ensueño",            
            descripcion:"Casa con vista a Monte Alban",
            direccion: "Ruta a Monte Alban sin número",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Oaxaca"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Casa"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        new Casa(
            titulo:"Departamento de Lujo",            
            descripcion:"Lujoso departamento en el corazón de polanco",
            direccion: "Goldsmith 40",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Distrito Federal"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Departamento"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        new Casa(
            titulo:"Departamento compartido",            
            descripcion:"Departamento compartido en el centro de chilangolandia",
            direccion: "Cuauhtemoc 345",
            lat: 123.1231,
            lon: 123.123,
            precio: 12312.50,
            capacidad: 4,
            ciudad: Ciudad.findByNombre("Departamento"),
            tipoAlojamiento: TipoAlojamiento.findByNombre("Departamento"),
            tipoHabitacion: TipoHabitacion.findByNombre("Casa/apto. entero")
        ).save()
        
    }
    def destroy = {
    }
}
