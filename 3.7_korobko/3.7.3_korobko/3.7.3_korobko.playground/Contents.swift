import UIKit

var pupleNumbers = ["Иван", "Коля", "Семен", "Петр", "Андрей", "Павел", "Илья", "Миша", "Вася", "Леша", "Женя", "Саша"]

pupleNumbers.insert(contentsOf: ["Алла"], at: 0)
pupleNumbers.insert(contentsOf: ["Анна"], at: 2)
pupleNumbers.insert(contentsOf: ["Алина"], at: 4)
pupleNumbers.insert(contentsOf: ["Света"], at: 6)
pupleNumbers.insert(contentsOf: ["Люба"], at: 8)
pupleNumbers.insert(contentsOf: ["Катя"], at: 10)
pupleNumbers.insert(contentsOf: ["Настя"], at: 12)

pupleNumbers.removeLast(9)

pupleNumbers.sort {firstIPuple, lastPuple in
    firstIPuple < lastPuple
}
print("весь список по алфавиту:, \(pupleNumbers)")


