import Foundation

func customSort(array: [Int], areInIncreasingOrder: (Int, Int) -> Bool) -> [Int] {
    var result = array
    let count = result.count

    for i in 0..<count {
        for j in 0..<count - i - 1 {
            if !areInIncreasingOrder(result[j], result[j + 1]) {
                
                let temp = result[j]
                result[j] = result[j + 1]
                result[j + 1] = temp
            }
        }
    }

    return result
}

let numbers = [3, 1, 8, 11, 6]

let ascending = customSort(array: numbers) { a, b in
    return a < b
}
print("По возрастанию: \(ascending)")

let descending = customSort(array: numbers) { a, b in
    return a > b
}
print("По убыванию: \(descending)")
