import Foundation

func findMinMax(numbers: [Int]) -> (min: Int, max: Int) {
    var min = numbers[0]
    var max = numbers[0]

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

    if numbers.isEmpty {
        print("Ошибка: список пуст или содержит не числа.")
    } else {
        let result = findMinMax(numbers: numbers)
        print("Минимальное число: \(result.min)")
        print("Максимальное число: \(result.max)")
    }
}
