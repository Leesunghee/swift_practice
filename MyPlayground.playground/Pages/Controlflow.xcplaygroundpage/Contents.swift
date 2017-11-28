//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

var todo: [String] = ["장보기", "과제하기", "이메일 답장하기"]

todo.append("식당 예약하기")
todo = todo + ["도서관에서 책 빌리기"]

print(todo[0])
print(todo[1])
print(todo[2])

for task in todo {
    print(task)
}

1...5
1..<5

for number in 1...10 {
    print("\(number) X 5 = \(number * 5)")
}

var x = 0
while x <= 20 {
    print(x)
    x += 1
}
var index = 0
while index < todo.count {
    print(todo[index])
    index += 1
}
//Repeat-While loop
var counter = 1
repeat {
    print("Inside repeat while loop!")
} while counter < 1

/*
 if 조건문 {
    //코드
 } else  {
    //코드
 }
 */
var temperature = 14
if temperature < 17 {
    print("날씨가 쌀쌀합니다. 가벼운 스웨터를 입으세요.")
} else if temperature < 12  {
    print("날씨가 춥습니다. 자켓을 꺼내세요!")
} else {
    print("날씨가 좋네요. 티셔츠를 입으세요.")
}

//Logical Operator
3 < 2 && "a" == "a"

if temperature > 7 && temperature < 12 {
    print("자켓과 함께 스카프도 메세요.")
}

var isRaining: Bool = true
var isSnowing: Bool = false

if isRaining || isSnowing {
    
}

if !isRaining {
    print("해가 떴습니다.")
}

let airportCodes = ["INC", "GMP", "HKG", "SFO", "LHR"]

let airport = airportCodes[0]

for airportCode in airportCodes {
    switch airportCode {
    case "INC": print("Incheon Airport")
    case "GMP": print("Gimpo Airport")
    case "HKG": print("Hongkong Airport")
    case "GMP": print("Gimpo Airport")
    case "GMP", "INC": print("Gimpo Airport")
    default:
        print("알 수 없는 공항코드 입니다.")
    }
}

import Foundation

//var randomTemperature = Int(arc4random_uniform(UINT32(80))) - 30


