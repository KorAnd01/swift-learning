import Foundation

func isPalindrome(_ text: String) -> Bool {
    let filtered = text.lowercased().filter { $0.isLetter || $0.isNumber }
    let chars = Array(filtered)
    var i = 0
    var j = chars.count - 1
    
    while i < j {
        if chars[i] != chars[j] {
            return false
        }
        i += 1
        j -= 1
    }
    return true
}

print("Введите строку: ", terminator: "")
if let input = readLine() {
    if isPalindrome(input) {
        print("Это палиндром.")
    } else {
        print("Это не палиндром.")
    }
}
