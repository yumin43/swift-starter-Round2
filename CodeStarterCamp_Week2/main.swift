import Foundation

var winLottoNumbers: Set<Int> = Set<Int>()

while winLottoNumbers.count < 6 {
    var number = Int.random(in: 1...45)
    winLottoNumbers.insert(number)
}

print(winLottoNumbers)

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
