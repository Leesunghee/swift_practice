//Initialization

class Fahrenheit {
    var temperature: Double
    
    init() {
        temperature = 32.0
    }
}

let f = Fahrenheit()
f.temperature

class Celsius {
    var temperature: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        temperature = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperature = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperature = celsius
    }
}

let boilingTempOfWater = Celsius(fromFahrenheit: 212.0)
boilingTempOfWater.temperature

let celsius = Celsius(50)


//Optional Type

let possibleNumber = "123"

let convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
    print("converted number is \(convertedNumber!)")
}

//Optional Binding
if let actualNumber = convertedNumber {
    print("actual number is \(actualNumber)")
} else  {
    print("actual number does not exist")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber
    && secondNumber < 100 {
    print("first number is \(firstNumber), second number is \(secondNumber)")
}

//Optional Chaining
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) rooms")
} else {
    print("Uable to retrieve the number of rooms")
}
