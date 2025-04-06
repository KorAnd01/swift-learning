import UIKit

var numbers = [2, 4, 6, 8]
print(numbers.count)
numbers[0]+=4
print (numbers)

var resultNumbers: [Int] = []

for item in numbers.enumerated() {
    if item.element != 0 {
        resultNumbers.append(numbers[0] * numbers[1] * numbers[2] * numbers[3])
        
 //       resultNumbers.append(numbers[0] * numbers[1] * numbers[2] * numbers[3])
    }
    print (resultNumbers)
}
numbers += resultNumbers
print(numbers[0...4])



