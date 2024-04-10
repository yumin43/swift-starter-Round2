func makeLotto() {
    var lottoWinningNumbers: Set<Int> = Set<Int>()
    
    while lottoWinningNumbers.count < 6 {
        lottoWinningNumbers.insert(Int.random(in: 1...45))
    }
    saveWinningNumber(winningNumber: lottoWinningNumbers)
}

func saveWinningNumber(winningNumber: Set<Int>) {
    roundNumbers["\(roundNumbers.count + 1)회차"] = winningNumber
}
