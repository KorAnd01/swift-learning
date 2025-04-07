import UIKit

var numbers = [2, 4, 6, 8]
print(numbers.count)
numbers[0]+=numbers.count
print (numbers)

var resultNumber: [Int]? = [6, 4, 6, 8]
    
if let multiplicationNumber = resultNumber {
    var point = 1
    for number in multiplicationNumber {
        point *= number
    }
    resultNumber?.append(point)
}
if let multiplicationNumber = resultNumber {
    print(multiplicationNumber)
}


