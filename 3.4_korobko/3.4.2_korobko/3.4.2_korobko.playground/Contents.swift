import UIKit

var string = "Сегодня был теплый, солнечный день"

//string.replace("теплый", with: "морозный")

let leftIndex = string.index(string.startIndex, offsetBy: 12)
let rightIndex = string.index(string.startIndex, offsetBy: 19)
string.replaceSubrange(leftIndex...rightIndex, with: "морозный")

print(string)
