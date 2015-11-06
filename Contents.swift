//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{


case Apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }

}


class Automovil {
    
        var velocidad : Velocidades
        
        init() {
            velocidad = Velocidades(velocidadInicial: .velocidadAlta)
        }
        
        func cambioDeVelocidad () -> (actual :Int, velocidadEnCadena :String) {
            
            switch velocidad {
            case .Apagado:
                velocidad = .velocidadBaja
            case .velocidadBaja:
                velocidad = .velocidadMedia
            case .velocidadMedia:
                velocidad = .velocidadAlta
            case .velocidadAlta:
                velocidad = .Apagado
                
            }
            return (velocidad.rawValue, "\(velocidad)")
        }
    
   
}


var auto = Automovil()

for var i = 1; i <= 20; i++
{
    
   print( "\(i) \(auto.cambioDeVelocidad())")
}







