//Class 와  Structure

struct SomeStructure {
    
}
struct Resolution {
    var width = 5
    var height = 10
}

var resolution1 = Resolution()

resolution1.width

class VideoMode {
    var resolution = Resolution()
    var framRate = 0.0
    var name = ""
}

let videoMode = VideoMode()
videoMode.framRate
videoMode.name
videoMode.resolution.height



//Value Type vs Reference Type
//struct는  Value Type 간단한 구조를 쓸 때 사용
//class는 Reference Type


//Stored Property
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6

//Computed Property
struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10, height: 10))
let initialCenter = square.center
initialCenter

square.center = Point(x: 15.0, y: 15.0)
square.origin


//Type Property
class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 27
    }
}

SomeClass.storedTypeProperty
SomeClass.computedTypeProperty

//Property Observer - willSet didSet
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About toset total steps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360

//Methods
class Counter {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.count
counter.increment(by: 5)
counter.count
counter.reset()
counter.count

//Self property
struct Point2 {
    var x = 0.0
    var y = 0.0
    
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

//Type method
class SomeClass2 {
    static func someTypeMethod {
        return "something"
    }
}

SomeClass2.someTypeMethod()


