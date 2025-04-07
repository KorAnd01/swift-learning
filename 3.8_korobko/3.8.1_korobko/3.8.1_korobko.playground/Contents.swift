import UIKit

var stringSet: Set = ["розовый", "черный", "синий", "коричневый", "лиловый", "желтый"]

if stringSet.count > 5 {
    stringSet.insert("красный")
}

print(stringSet.sorted())
