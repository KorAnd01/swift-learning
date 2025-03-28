import UIKit

//Force unwrapping

let firstInt = Int("555")!
let sekondInt = 333

let differenceInt = firstInt - sekondInt
print(differenceInt)

//Optional binding

var firstValue: Int? = 200
let secondValue = 100
var difference = secondValue

if let firstValue {
    difference -= firstValue
}
print("разность: \(difference)")

//Оператор а ?? b

let populationString = "10000"
var population = Int(populationString) ?? 0
population -= 1

//Optional chaining

let string: String? = "сегодня отличный солнечный день"
let newString = string?.replacing("сегодня ", with: "").replacing("отличный", with: "")
print(newString)
