func makeLottoNumber() -> Set<Int> {
    var lottoWinningNumbers: Set<Int> = Set<Int>()

    while lottoWinningNumbers.count < 6 {
        lottoWinningNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoWinningNumbers
}
