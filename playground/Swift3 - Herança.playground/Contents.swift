//Herança -> entre classes
class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emiteSound(){
        print("...")
    }
}


class Dog: Animal {
    func run(){
        print("O cachorro está correndo")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    func fly(){
        if canFly {
            print("O passaro está voando")
        }else{
            print("O pássaro não voa")
        }
    }
    
    /***
     
        Regras:
         1 -> Desginated Initializer dever chamar outro designated da sua classe base
         2 -> Um Convenience Initializer deve chamar outro Initializer da mesma classe
         3 ->Um Convenience Initializer deve chamar, no final, um Desginated Initializer
     
     **/
    
    
    //Designated Initializer
    init(color: String, gender: Character, breed: String, canFly:Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    //Convenience Initializer
    convenience init(color: String, breed:String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
}


let billy = Dog(color: "Preto e branco", gender:"M", breed:"Lgasa Apso")
let zeCarioca = Bird(color: "Verde e branco", gender:"F", breed:"Papagaio", canFly: true)

let maleBrid = Bird(color: "branco",  breed:"Sabiá")



billy.emiteSound()
zeCarioca.emiteSound()
zeCarioca.fly()
