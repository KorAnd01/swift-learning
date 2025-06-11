import Foundation

func customFilter(array: [Int], condition: (Int) -> Bool) -> [Int] {
    var result: [Int] = []

    for number in array {
        if condition(number) {
            result.append(number)
        }
    }

    return result
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let evenNumbers = customFilter(array: numbers) { number in
    return number % 2 == 0
}
print("Чётные числа: \(evenNumbers)")

let greaterThanFive = customFilter(array: numbers) { number in
    return number > 5
}
print("Числа больше 5: \(greaterThanFive)")

let oddNumbers = customFilter(array: numbers) { number in
    return number % 2 != 0
}
print("Нечётные числа: \(oddNumbers)")

