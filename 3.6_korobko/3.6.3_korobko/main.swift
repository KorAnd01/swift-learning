import Foundation

print("Введите первое число:")
guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
    print("некорректный ввод числа")
    exit(1)
}

print("Введите второе число:")
guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
    print("некорректный ввод числа")
    exit(1)
}

print("Введите операцию (+, -, *, /):")
guard let operation = readLine(), ["+", "-", "*", "/"].contains(operation) else {
    print("некорректная операция")
    exit(1)
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
        print("на ноль делить нельзя")
        exit(1)
    }
    result = firstNumber / secondNumber
default:
    print("неизвестная операция")
    exit(1)
}

if let result = result {
    print("Результат: \(result)")
}

