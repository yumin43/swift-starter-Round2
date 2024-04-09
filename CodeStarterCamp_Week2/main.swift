func printLottoResult(matchNumbers: Set<Int>) {
    if matchNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchNumbers.map{String($0)}.joined(separator: ", ")) 입니다!")
    }
}

let myLottoNumbers = [1, 2, 3, 4, 5, 6]
let lottoNumbers = makeLottoNumber()

printLottoResult(matchNumbers: lottoNumbers.intersection(myLottoNumbers))
