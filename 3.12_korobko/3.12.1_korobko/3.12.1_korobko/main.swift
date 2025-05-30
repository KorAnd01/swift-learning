func isValidLength(_ input: String) -> Int? {
    if input.count >= 4 {
        return input.count
    }
    return nil
}


func generatePassword(ofLength length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let digits = "0123456789"
    let symbols = "!@#$%&*()"
    
    var passwordChars: [Character] = []
    
    if let digit = digits.randomElement() {
        passwordChars.append(digit)
    }
    if let symbol = symbols.randomElement() {
        passwordChars.append(symbol)
    }
    if let letter = letters.randomElement() {
        passwordChars.append(letter)
    }
    
    let allChars = letters + digits + symbols
    
    while passwordChars.count < length {
        if let randomChar = allChars.randomElement() {
            passwordChars.append(randomChar)
        }
    }
    
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

