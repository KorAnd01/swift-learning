func isValidLength(_ input: String) -> Int? {
    if let length = Int(input), length >= 4 {
        return length
    } else {
        return nil
    }
}

func generatePassword(ofLength length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let digits = "0123456789"
    let symbols = "!@#$%&*()"

    var passwordChars: [Character] = []

    passwordChars.append(digits.randomElement()!)
    passwordChars.append(symbols.randomElement()!)
    passwordChars.append(letters.randomElement()!)

    let allChars = letters + digits + symbols

    while passwordChars.count < length {
        passwordChars.append(allChars.randomElement()!)
    }

    // Перемешаем символы
    passwordChars.shuffle()

    return String(passwordChars)
}

while true {
    print("Введите длину пароля (не менее 4): ", terminator: "")
    if let input = readLine(), let length = isValidLength(input) {
        let password = generatePassword(ofLength: length)
        print("Сгенерированный пароль: \(password)")
        break
    } else {
        print("Ошибка: введите число не менее 4.")
        print("Хотите попробовать снова? Напишите 'заново' или любой другой текст для выхода.")
        let retry = readLine() ?? ""
        if retry.lowercased() != "заново" {
            break
        }
    }
}
