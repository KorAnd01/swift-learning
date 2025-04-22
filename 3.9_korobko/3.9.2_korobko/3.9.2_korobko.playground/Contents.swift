import UIKit

var bonuses = ["Андрей": 100,
               "Владимир": 50,
               "Сергей": 1]
let nikName = ["Мария": 90,
               "Иван": 80,
               "Сергей": 39]

let keyses = Array(bonuses.keys) + Array(nikName.keys)
var summ = [String: Int]()

for key in keyses {
    if let key1 = bonuses[key], let key2 = nikName[key] {
        summ[key] = key1 + key2
        print(summ)
    } else if let key1 = bonuses[key] {
        summ[key] = key1
    } else if let key2 = nikName[key] {
        summ[key] = key2
    } else {
        print("нет значения")
    }
}
print(summ)

