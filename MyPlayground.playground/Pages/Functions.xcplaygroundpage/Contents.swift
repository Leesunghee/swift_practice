//함수 : 특정 작업을 수행하는 독립적인 코드 덩어리

 
let width = 25
let height = 7
var area = width * height

 
func calculateArea(width: Int, height: Int) -> Int {
    let area = width * height
    return area
}
 
area = calculateArea(width: 10, height: 10)
print(area)
 



 

