//Function

func sum (_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract (_ a: Int, _ b: Int) -> Int {
    return a - b
}

func divide (_ a: Int, _ b: Int) -> Int {
    return a / b
}

func multiply (_ a: Int, _ b: Int) -> Int {
    return a * b
}

//função que recebe outra função
typealias Op = (Int, Int) -> Int
func applyOperation (_ a: Int, _ b: Int, operation: Op  ) -> Int{
    return operation(a, b)
}

//Exemplos de chamadas:
let result = applyOperation(10, 20 ,operation: subtract)

/** -------------------------------------------------  */

func getOperation (_ operation: String) -> Op {
    switch operation {
        case "soma":
            return sum
        case "subtração":
            return subtract
        case "multiplicacão":
            return multiply
        default:
            return divide
    }
}

var operation  = getOperation("subtração")
operation (30, 15)
