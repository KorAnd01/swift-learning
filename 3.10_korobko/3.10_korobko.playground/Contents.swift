import UIKit

let dates = ["15.05.2025", "25.06.2025", "15.05.2025"]
let steps = [10000, 5000, 34]

var result: [String: Int] = [:]

for (index, date) in dates.enumerated() {
    let stepCount = index < steps.count ? steps[index] : 0
    if let existingSteps = result[date] {
        result[date] = existingSteps + stepCount
    } else {
        result[date] = stepCount
    }
}

for (date, stepCount) in result {
    print("Дата: \(date), Шаги: \(stepCount)")
}

