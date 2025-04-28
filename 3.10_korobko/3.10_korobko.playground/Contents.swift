import UIKit

let dates = ["15.05.2025", "25.06.2025", "06.07.2025"]
let steps = [10000, 5000]

var result: [(date: String, steps: Int)] = []

for (index, date) in dates.enumerated() {
    let stepCount = index < steps.count ? steps[index] : 0
    result.append((date: date, steps: stepCount))
}

for item in result {
    print("Дата: \(item.date), Шаги: \(item.steps)")
}
