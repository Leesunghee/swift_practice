//Inheritance
//Subclass <- Superclass
//Overriding

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoice() {
        
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.currentSpeed
bicycle.description

class Tandem: Bicycle {
    var numberOfPassengers = 0
}

let tandem = Tandem()
tandem.currentSpeed
tandem.description
tandem.makeNoice()
tandem.numberOfPassengers

class Train: Vehicle {
    override func makeNoice() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoice()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print(car.description)
