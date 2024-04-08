import Foundation

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

func pickLottoNumber() -> Set<Int> {
    var lottoNumber = Set<Int>()
    while (lottoNumber.count < 6) {
        let random = Int.random(in: 1...45)
        lottoNumber.insert(random)
    }
    return lottoNumber
}

func findSameNumbers(myNumber: [Int]) {
    
    let boxOfLottoNumber = pickLottoNumber()
    let selectedNumbers: Set<Int> = boxOfLottoNumber.intersection(myNumber)
    
    if selectedNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(selectedNumbers.map{String($0)}.joined(separator: ",")) 입니다!")
    }
    
}




findSameNumbers(myNumber: myLottoNumbers)

