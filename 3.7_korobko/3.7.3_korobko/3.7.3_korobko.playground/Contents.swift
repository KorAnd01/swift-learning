import UIKit

var boysNumbers = ["Иван", "Коля", "Семен", "Петр", "Андрей", "Павел", "Илья", "Миша", "Вася", "Леша", "Женя", "Саша"]
var girlsNubers = ["Алла", "Анна", "Алина", "Света", "Люба", "Катя", "Настя"]


//boysNumbers.insert(contentsOf: girlsNubers, at: 1)
                   
//for item in puplsNumbers.enumerated() {
   // print("\(item.offset), \(item.element)")
//}
boysNumbers.removeLast(5)
girlsNubers.removeLast(2)
var puplsNumbers = boysNumbers + girlsNubers
print("результат: \(puplsNumbers.sorted())")
