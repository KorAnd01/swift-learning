import UIKit

let bonuses = ["Андрей": 100,
                  "Владимир": 50,
                  "Сергей": 1]
let nikName = ["Мария": 90,
                   "Иван": 80,
                   "Сергей": 39]

let keyses = Array(bonuses.keys) + Array(nikName.keys)

var summ: [String: Int] = [:]

for key in bonuses.keys {
    
    if let value1 = bonuses[key], let value2 = nikName[key] {
            
        summ[key] = value1 + value2
        
        }
}
print(summ)
