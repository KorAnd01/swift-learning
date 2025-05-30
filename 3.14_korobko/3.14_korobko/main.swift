import Foundation


enum Operation: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

enum CalculatorError: Error {
    case invalidNumber
    case invalidOperation
    case divisionByZero
}

func readNumber(prompt: String) throws -> Double {
    print(prompt)
    guard let input = readLine(), let number = Double(input) else {
        throw CalculatorError.invalidNumber
    }
    return number
}

func readOperation() throws -> Operation {
    print("Введите операцию (+, -, *, /):")
    guard let input = readLine(), let op = Operation(rawValue: input) else {
        throw CalculatorError.invalidOperation
    }
    return op
}

func calculate(_ a: Double, _ b: Double, _ op: Operation) throws -> Double {
    switch op {
    case .addition:
        return a + b
    case .subtraction:
        return a - b
    case .multiplication:
        return a * b
    case .division:
        if b == 0 {
            throw CalculatorError.divisionByZero
        }
        return a / b
    }
}

do {
    let first = try readNumber(prompt: "Введите первое число:")
    let second = try readNumber(prompt: "Введите второе число:")
    let operation = try readOperation()
    
    let result = try calculate(first, second, operation)
    print("Результат: \(result)")
    
} catch CalculatorError.invalidNumber {
    print("Ошибка: вы ввели не число.")
} catch CalculatorError.invalidOperation {
    print("Ошибка: недопустимая операция.")
} catch CalculatorError.divisionByZero {
    print("Ошибка: на ноль делить нельзя.")
} catch {
    print("Неизвестная ошибка: \(error)")
}
