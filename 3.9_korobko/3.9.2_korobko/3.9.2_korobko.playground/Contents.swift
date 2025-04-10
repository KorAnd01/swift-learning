import UIKit

let bonuses = ["Андрей": 100,
                  "Владимир": 50,
                  "Сергей": 1]
let nikName = ["Мария": 90,
                   "Иван": 80,
                   "Сергей": 39]

var summ: [String: Int] = [:]

/* по логике в переменную summ добавляю поочередно первый словарь по ключам,
 потом второй по ключам.
 Затем также c бонусами, но указать условие, что если значения по ключам совпадают, то бонусы суммируются */


for Keybonuses in bonuses.keys {
    if let a = bonuses[Keybonuses] {
        for keyNikName in nikName.keys {
            if let b = nikName[keyNikName] {
                let summ1 = a + b
                print(summ1)
            }
        }
    }
}

for (valueBonus1, valueBonus) in bonuses {
    if let c = bonuses[valueBonus] {
        
        for (valueNikName1, valueNikName) in nikName {
            if let d = nikName[valueNikName] {
                
            }
        }
    }
}

if let Keybonuses = keyNikName
    let summ2 = c + d

summ = summ1 + summ2

print(summ)
