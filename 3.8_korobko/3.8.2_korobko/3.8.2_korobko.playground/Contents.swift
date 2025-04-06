import UIKit

var stringSet: Set = ["Иван", "Сергей", "Петр", "Валерий"]

let addName = "Андрей"

    if stringSet.count < 5 {
        stringSet.insert(addName)
        
    } else {
        if let randomName = stringSet.randomElement() {
            stringSet.remove(randomName)
            
        }
        }
let result = stringSet.joined(separator: ",")
print(result)

