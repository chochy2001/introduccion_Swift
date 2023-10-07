import UIKit

let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = true

if isAged {//Solo entramos aquí, si isAged == true
    print("Puedes entrar en la fiesta")
}else{//Solo entramos aquí, si isAged == false
    print("No puedes pasar a la fiesta")
}

var age = 12
if age >= 18 || age < 30 && age < 50 {
    print("Puedes entrar en la fiesta, eres mayor de edad y tienes menos de 50 ")
}




//TUPLAS
let http404Error = (404, "Página no encontrada")
let (statusCode, statusMessage) = http404Error
let person = ("Jorge",22)
let (personName,personAge) = person
//Se puede acceder a los valores de la persona con los numerales
print("La edad de \(personName) es \(personAge)")
print("La edad de \(person.0) es \(person.1)")

print("El código del estado es \(statusCode)")
print("El mensaje del servidor es \(statusMessage)")

//Solo se pueden agregar dos elementos
let person1 = ("Jorge","Salgado")
//esto no funciona
//let personPlus = ("Jorge","Salgado","Miranda")

//ignora el segundo valor que retorna la tupla
let (justStatusCode, _) = http404Error
print("El código del estado es \(justStatusCode)")

print("El código del error es \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("El código del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

let possibleAge = "31"
let convertedAge = Int(possibleAge) //Int?

//con ? puede se nil, que es la ausencia de valor
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer : String?

surveyAnswer = "42"


if convertedAge ! = nil {
    print("La edad del usuario no es nula: \(convertedAge!)")//si se quita es optional
    //con ! forza a que se conviera a fuerza bruta, ya que es optional
} else{
    print("La edad del usuario es nula")
}


if let actualAnswer = surveyAnswer {//las constantes no pueden ser nil
    //Al llegar aquí, surveyAnswer != nil
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
    
}else{
    //Al llegar aquí, surveyAnswer = nil
    print("El string \(surveyAnswer) es nil... ")
}


if let firstNumber = Int("4"),let secondNumber = Int("42"),firstNumber < secondNumber && secondNumber<100{
    print("\(firstNumber) < \(secondNumber) < 100")
}


if let firstNumber = Int("4"){
    if let secondNumber = Int("42"){
        if firstNumber < secondNumber && secondNumber<100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}



let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let assummedString: String! = "Un string unwrapped de forma implicita a partir de un optional"
let implicitString: String = assummedString

if assummedString != nil {
    print(assummedString!)
}

if let definitiveString = assummedString {
    print(definitiveString)
}

print(assummedString)
