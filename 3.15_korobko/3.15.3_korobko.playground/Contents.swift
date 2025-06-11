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

let array1 = [7, 2, 9, 4, 1]
let sortedAscending = customSort(array: array1) { a, b in
    return a < b
}
print("Массив 1 по возрастанию: \(sortedAscending)")

let array2 = [10, 5, 3, 12, 8]
let sortedDescending = customSort(array: array2) { a, b in
    return a > b
}
print("Массив 2 по убыванию: \(sortedDescending)")

