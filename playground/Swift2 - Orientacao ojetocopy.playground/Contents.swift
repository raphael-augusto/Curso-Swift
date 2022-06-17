/// classes
class Person {
    //Propriedade
    var name: String
    var gender: Character
    var age: Int = 0
    
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
    
    //metodo
    func speak(sentence: String){
        if age < 3 {
            print("gugu dada")
        }else {
            print(sentence)
        }
    }
    
    func introduce(){
        speak(sentence: "Olá, meu nome é \(name)")
    }
}

class Job {
    //Propriedade
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}


let joao = Person(name: "João", gender: "M")
let clara = Person(name: "Clara", gender: "F")
let fabio = Person(name: "Fábio", gender: "M")

joao.age = 34
clara.age = 27
fabio.age = 1

joao.introduce()
clara.introduce()
fabio.introduce()


class Vehicle{
    var speed: Double = 0 {
        //dispara o metodo quando é alterado
        didSet {
            speed = min(speed, maxSpeed)
        }
    }
    
    var model: String
    static let speedUnit = "Km/h"
    
    //variavel computada
    var maxSpeed: Double {
        return 250
    }
    
    var speedInMilesPerHour: Double {
        get{
            return speed / 1.60934
        }
        set{
            speed = newValue * 1.60934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    
    //metodo de instacia
    func descript() -> String {
        return "Veículo: \(model), velocidade atual \(speed)"
    }
    
    //metodo de classe
    
    class func alert() -> String{
        return "Se beber, não dirija"
    }
}


let car = Vehicle(model: "City")
car.speed = 500
print(car.speed)
