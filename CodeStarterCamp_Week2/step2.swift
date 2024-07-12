var randomNumberOfLottoNumber: Set<Int> = Set(1...45)
var winningNumber: [Int] = []

func randomNumberGeneratorOfLottoNumber(myLottoNumbers: [Int]) {
    while randomNumberOfLottoNumber.count > 6 {
        randomNumberOfLottoNumber.removeFirst()
    }
    for lottoNumbers in randomNumberOfLottoNumber {
        if myLottoNumbers.contains(lottoNumbers) {
            winningNumber.append(lottoNumbers)
        }
    }
    if winningNumber.count != 0 {
        print("축하합니다! 겹치는 번호는 \(winningNumber) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

