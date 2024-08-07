import Foundation

func createWinLottoNumbers() -> Set<Int> {
    var winLottoNumbers: Set<Int> = Set<Int>()
    
    while winLottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        winLottoNumbers.insert(number)
    }
    
    saveDict(winLottoNumbers: winLottoNumbers)
    return winLottoNumbers
}

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
var winLottoNumbersDict: [String: [Int]] = [:]
var roundNum: Int = 1

func saveDict(winLottoNumbers: Set<Int>) {
    var roundNumString: String = "\(roundNum)회차"
    var winLottoNumbersArray: [Int] = Array(winLottoNumbers)
    winLottoNumbersDict[roundNumString] = winLottoNumbersArray
    roundNum += 1
}

func checkSameNumbers(winLottoNumbers: Set<Int>) {
    let sameNumbers: Set<Int> = winLottoNumbers.intersection(myLottoNumbers)
    let sameNumbersString = sameNumbers.map { String($0) }
    let sameNumbersJoin: String = sameNumbersString.joined(separator: ", ")
}

for _ in 1...5 {
    checkSameNumbers(winLottoNumbers: createWinLottoNumbers())
}

// print(winLottoNumbersDict)

let myRoundNum: String = "2회차"
if let myRoundWinLottoNumbers = winLottoNumbersDict[myRoundNum] {
    let myRoundWinLottoNumbersString = myRoundWinLottoNumbers.map { String($0) }
    let myRoundWinLottoNumbersJoin: String = myRoundWinLottoNumbersString.joined(separator: ", ")
    print("\(myRoundNum)의 로또 당첨 번호는 \(myRoundWinLottoNumbersJoin) 입니다.")
}
