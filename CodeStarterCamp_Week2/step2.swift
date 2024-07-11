var randomNumberOfLottoNumber: Set<Int> = Set(1...45)
var winningNumberOfLotto: [Int] = []

func randomNumberGeneratorOfLotto(myLottoNumbers: [Int]) {
    while randomNumberOfLottoNumber.count > 6 {
        randomNumberOfLottoNumber.removeFirst()
    }
    
    for counts in randomNumberOfLottoNumber {
        winningNumberOfLotto.append(counts)
    }

    if winningNumberOfLotto == myLottoNumbers {
        print("축하합니다! 겹치는 번호는 \(myLottoNumbers) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
