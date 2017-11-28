
var str = "Hello, playground"


var language = "Swift"

language = ""

//숫자로 시작할 수 없다
//스페이스, 탭과 같은 공백문자도 사용할 수 없다.
//수학적 기호도 사용할 수 없다


//상수를 선언하는 방법은 let 변수명 = 값입니다. 스트링은 쌍따옴표로 감싸줘야 합니다.
//스트링 합치기
//let address "\(country), \(province), \(city)"


//Collections - Array, Dictionary, Set

var todo: [String] = ["장보기", "과제하기", "이메일 답장하기"]

todo.append("식당 예약하기")
todo = todo + ["도서관에서 책 빌리기"]
todo += ["빨래하기"]

let tasks = ["염색하기"]

//tasks.append("머리감기")

let firstTodo = todo[0]
let thirdTodo = todo[2]

todo[4] = "화장실 청소하기"

todo.insert("빨래 널기", at: 2)
todo.remove(at: 2)
todo.count

//let lastItem = todo[6]



//Dictionary
var airportCodes: [String: String] = [
    "INC" : "Incheon",
    "GMP" : "Gimpo",
    "HKG" : "Hong Kong International",
    "SFO" : "San Francisco Interantional",
    "LHR" : "Heathrow"]

//Reading
let airportName = airportCodes["INC"]

//Inserting
airportCodes["SYD"] = "Sydney"
airportCodes["GMP"] = "Gimpo International"

airportCodes.updateValue("Gipmo", forKey: "GMP")

//Removing
airportCodes["SYD"] = nil
airportCodes.removeValue(forKey: "LHR")

let incheonAirport = airportCodes["INC"]
type(of: incheonAirport)





