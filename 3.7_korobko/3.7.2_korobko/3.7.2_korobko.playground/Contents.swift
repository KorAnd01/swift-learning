import UIKit

var numbers = [2, 4, 6, 8]

for item in numbers.enumerated() {
    print("\(item.element)")
}
print(numbers[0]+4)

var numberProduct = 2*4*6*8

print(numberProduct)

numbers.append(numberProduct)
