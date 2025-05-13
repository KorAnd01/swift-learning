import Foundation

func getIntInput(prompt: String) -> Int {
    while true {
        print(prompt, terminator: " ")
        if let input = readLine(), let number = Int(input) {
            return number
        } else {
            print("Введите число")
        }
    }
}

func playGame() {
    print("Сыграем в игру 'Угадай число'?!")
    
    let minNumber = getIntInput(prompt: "Введите число min:")
    let maxNumber = getIntInput(prompt: "Введите число max:")
    
    if minNumber >= maxNumber {
        print("Минимум < максимума.")
        return
    }
    
    let target = Int.random(in: minNumber...maxNumber)
    var attempts = 0
    var currentMin = minNumber
    var currentMax = maxNumber
    
    while true {
        let guess = getIntInput(prompt: "Угадайте число (\(currentMin)-\(currentMax)):")
        
        if guess < currentMin || guess > currentMax {
            print("Вы вышли за границы. Введите число между \(currentMin) и \(currentMax).")
            continue
        }
        
        attempts += 1
        
        if guess < target {
            print("Больше")
            currentMin = max(currentMin, guess + 1)
        } else if guess > target {
            print("Меньше")
            currentMax = min(currentMax, guess - 1)
        } else {
            print("Поздравляем! Вы угадали c \(attempts) попытки.")
            break
        }
    }
}

while true {
    playGame()
    print("Хотите сыграть ещё раз? YES = да, NO = выйти:")
    let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    if input != "YES" {
        print("Спасибо за игру!")
        break
    }
}
