import UIKit

enum Grade: String {
    case junior
    case middle
    case senior
}

enum Developer {
    case IOS(grade: Grade)
    case android(grade: Grade)
    
    func description() -> String {
        switch self {
        case .IOS(let grade):
            return "🍏 \(grade.rawValue) iOS-developer"
        case .android(let grade):
            return "🤖 \(grade.rawValue) Android-developer"
        }
    }
}

let developers: [Developer] = [.IOS(grade: .junior), .android(grade: .senior)]

for developer in developers {
    print(developer.description())
}

