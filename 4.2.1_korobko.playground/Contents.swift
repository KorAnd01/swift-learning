import UIKit

struct DogStruct {
    var name: String
}

class DogClass {
    var name: String
    
    init (name: String) {
        self.name = name
    }
}

var dog1 = DogStruct (name: "Берни")
var dog2 = dog1

dog2.name = "Шарик"

print("структура:")
print("dog1 имя: \(dog1.name)")
print("dog2 имя: \(dog2.name)")

print("______________")

var puppy1 = DogClass(name: "Бобик")
var puppy2 = puppy1

puppy2.name = "Гарри"

print("класс:")
print("puppy1 имя: \(puppy1.name)")
print("puppy2 имя: \(puppy2.name)")
