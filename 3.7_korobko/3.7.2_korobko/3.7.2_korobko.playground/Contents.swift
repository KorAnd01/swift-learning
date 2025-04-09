import UIKit

var numbers = [2, 4, 6, 8]
print(numbers.count)
numbers[0]+=numbers.count
print (numbers)

var resultNumber: Int? = 1

    
for case let item in numbers {
    resultNumber? *= item
}

numbers.append(resultNumber!)
print (numbers)
