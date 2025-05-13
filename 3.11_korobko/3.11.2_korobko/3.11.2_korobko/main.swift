import Foundation

var shouldContinue = true

while shouldContinue {
    print("Введите первое число:")
    guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
        print("Некорректный ввод числа")
        continue
    }

    print("Введите второе число:")
    guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
        print("Некорректный ввод числа")
        continue
    }

    print("Введите операцию (+, -, *, /):")
    guard let operation = readLine(), ["+", "-", "*", "/"].contains(operation) else {
        print("Некорректная операция")
        continue
    }

    var result: Double?

    switch operation {
    case "+":
        result = firstNumber + secondNumber
    case "-":
        result = firstNumber - secondNumber
    case "*":
        result = firstNumber * secondNumber
    case "/":
        if secondNumber == 0 {
            print("На ноль делить нельзя")
            continue
        }
        result = firstNumber / secondNumber
    default:
        print("Неизвестная операция")
        continue
    }

    if let result = result {
        print("Результат: \(result)")
    }

    print("Хотите начать сначала или закончить выполнение программы? (да/нет): ", terminator: "")
    if let answer = readLine()?.lowercased(), answer != "да" {
        shouldContinue = false
        print("Завершение программы.")
    }
}

