
//var originalText = "Сегодня был теплый, солнечный день"
//var wordForReplace = "теплый"
//var newWord = "морозный"

import Foundation

print("Исходный текст")
guard let originalText = readLine() else {
    print("Ошибка")
    exit(1)
}

print("Текст, который нужно заменить")
guard let wordForReplace = readLine(), !wordForReplace.isEmpty else {
    print("Ошибка")
    exit(1)
}

print("Текст, на который нужно заменить:")
guard let newWord = readLine() else {
    print("Ошибка ввода")
    exit(1)
}

let modifiedText = originalText.replacingOccurrences(of: wordForReplace, with: newWord)
print("Результат:")
print(modifiedText)
