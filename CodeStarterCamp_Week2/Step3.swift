func createWinLottoNumbers() {
    var winLottoNumbers: Set<Int> = Set<Int>()
    
    while winLottoNumbers.count < 6 {
        let number = Int.random(in: 1...45)
        winLottoNumbers.insert(number)
    }
    
    saveDict(winLottoNumbers: winLottoNumbers)
}

var winLottoNumbersDict: [String: [Int]] = [:]
var roundNum: Int = 1

func saveDict(winLottoNumbers: Set<Int>) {
    let roundNumString: String = "\(roundNum)회차"
    let winLottoNumbersArray: [Int] = Array(winLottoNumbers)
    winLottoNumbersDict[roundNumString] = winLottoNumbersArray
    roundNum += 1
}








