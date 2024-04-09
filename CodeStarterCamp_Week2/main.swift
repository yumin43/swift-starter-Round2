let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
let lottoNumbers: Set<Int> = makeLotto()

let matchNumbers: Set<Int> = lottoNumbers.intersection(myLottoNumbers)

if matchNumbers.isEmpty {
    print("아쉽지만 겹치는 번호가 없습니다.")
} else {
    print("축하합니다! 겹치는 번호는 \(matchNumbers.map{String($0)}.joined(separator: ", ")) 입니다!")
}
