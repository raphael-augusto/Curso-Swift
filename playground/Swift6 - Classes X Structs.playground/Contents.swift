import UIKit

//Classes X Structs

struct Student {
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    weak var friend: Person? // weak server para retirar o vazamento da memória
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    deinit{
        print("\(name) foi desalocado da memória")
    }
}

/***=========== struct =====================*/
var student1 = Student(name: "Zeca", age: 22)
var student2 = student1 //Cópia (struct)

student1.name = "Alisson"
student1.age = 33

print(student2.name, student2.age)

/***================================*/

print("############")
print("\n")
/***================================*/

/***========classes========================*/

var person1: Person? = Person(name: "Zeca", age: 22)
var person2: Person? = person1 //passada por referencia. (Cuidado que pode dar memory leak)

var person3: Person? = Person(name: "Felipe", age: 27)
var person4: Person? = Person(name: "Henrique", age: 44)

person1!.name = "Alisson"
person1!.age = 33

print(person2!.name, person2!.age)

person1 = nil
person2 = nil

//memory leaks

person3?.friend = person4
person4?.friend = person3

person3 = nil
person4 = nil

