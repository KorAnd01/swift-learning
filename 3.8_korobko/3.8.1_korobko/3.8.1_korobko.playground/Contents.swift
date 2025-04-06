import UIKit

var stringSet: Set = ["розовый", "черный", "синий", "коричневый", "лиловый", "желтый"]

if stringSet.count > 5 {
    stringSet.insert("красный")
}
//let sortedStringsArray = Array(stringSet.sorted())
//for element in sortedStringsArray.sorted() {
//print(element)

print(stringSet.sorted())
