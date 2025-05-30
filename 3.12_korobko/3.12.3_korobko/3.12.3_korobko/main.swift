import Foundation

func findMinMax(numbers: [Int]) -> (min: Int, max: Int)? {
   guard var min = numbers.first, var max = numbers.first else {
       return nil
   }

    for number in numbers {
        if number < min {
            min = number
        }
        if number > max {
            max = number
        }
    }

    return (min, max)
}

print("Введите числа через запятую: ", terminator: "")
if let input = readLine() {
    let stringNumbers = input.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) }
    let numbers = stringNumbers.compactMap { Int($0) }

    if let result = findMinMax(numbers: numbers) {
        print("Минимальное число: \(result.min)")
        print("Максимальное число: \(result.max)")
        } else {
            print("Ошибка: список пуст или содержит не числа.")
    }
}

