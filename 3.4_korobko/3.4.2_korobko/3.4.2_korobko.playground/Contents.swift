import UIKit

var string = "Сегодня был теплый, солнечный день"
let string0 = "Сегодня был теплый, солнечный день"
var stringFrozen = "морозный"
var string1 = "Сегодня был морозный, солнечный день"

string.replace("теплый", with: "морозный")

let leftIndex = string.index(string.startIndex, offsetBy: 12)
let rightIndex = string.index(string.startIndex, offsetBy: 17)
string.replaceSubrange(leftIndex...rightIndex, with: "морозный")

print("было:", string0)
print("поменяли теплый на", stringFrozen)
print("стало:", string1)
