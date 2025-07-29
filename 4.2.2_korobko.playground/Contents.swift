import Foundation

let user = [
    "name": "George G.",
    "weight": 75.7,
    "height": 175.3
] as [String : Any]

let dates = ["28.01.2020", "29.01.2020", "30.01.2020", "29.01.2020"]
let stepsData = [
    (steps: 1246, minutes: 34),
    (steps: 3378, minutes: 126),
    (steps: 9937, minutes: 98),
    (steps: 3361, minutes: 24),
    (steps: 12456, minutes: 136)
]

struct FitnessDay {
    var date: String
    var steps: Int
    var minutes: Int
    var weight: Double
 
    func getCalories() -> Int {
        return Int(Double(steps) * 0.03)
    }
    
    func getSpeed() -> Double {
        let distanceInKm = Double(steps) * 0.0008
        let hours = Double(minutes) / 60.0
        if hours == 0 {
            return 0.0
        }
        return (distanceInKm / hours * 10).rounded() / 10
    }
}

func buildFitnessDays(dates: [String], stepsData: [(steps: Int, minutes: Int)], userWeight: Double) -> [FitnessDay] {
    var dayDict: [String: (steps: Int, minutes: Int)] = [:]
    
    // Суммируем шаги и минуты по дате
    for (index, date) in dates.enumerated() {
        if index < stepsData.count {
            let data = stepsData[index]
            if dayDict[date] != nil {
                dayDict[date]!.steps += data.steps
                dayDict[date]!.minutes += data.minutes
            } else {
                dayDict[date] = data
            }
        } else {
            // steps меньше чем dates — заполняем нулями
            if dayDict[date] == nil {
                dayDict[date] = (0, 0)
            }
        }
    }
    
    var result: [FitnessDay] = []
    for (date, data) in dayDict {
        let day = FitnessDay(date: date, steps: data.steps, minutes: data.minutes, weight: userWeight)
        result.append(day)
    }
    
    return result.sorted { $0.date < $1.date }
}

let fitnessDays = buildFitnessDays(dates: dates, stepsData: stepsData, userWeight: user["weight"] as! Double)

for day in fitnessDays {
    print("Дата: \(day.date), шаги: \(day.steps), калории: \(day.getCalories()), скорость: \(day.getSpeed()) км/ч")
}
