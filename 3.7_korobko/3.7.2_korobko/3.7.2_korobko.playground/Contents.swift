import UIKit

var numbers = [2, 4, 6, 8]
print(numbers.count)
numbers[0] += numbers.count
print(numbers)

var resultNumber: Int?

for item in numbers {
    if let result = resultNumber {
        resultNumber = result * item
    } else {
        resultNumber = item
    }
    if let resultNumber {
        numbers.append(resultNumber)
    }
}

print(numbers)
