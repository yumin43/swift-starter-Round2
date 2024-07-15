import Foundation

var randomNumberOfLottoNumber: Set<Int> = Set<Int>()
var winningNumber: [Int] = []
var myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func randomNumberGeneratorOfLottoNumber() {
    randomNumberOfLottoNumber.removeAll()
    winningNumber.removeAll()
    randomNumberOfLottoNumber = Set(1...45)
    
    while randomNumberOfLottoNumber.count > 6 {
        randomNumberOfLottoNumber.removeFirst()
    }
    
    for lottoNumbers in randomNumberOfLottoNumber {
        if myLottoNumbers.contains(lottoNumbers) {
            winningNumber.append(lottoNumbers)
        }
    }
    
    
    if winningNumber.count >= 1 {
        var printWinningMesage: String = String()
        for number in winningNumber {
            printWinningMesage.insert(contentsOf: "\(number), ", at: printWinningMesage.endIndex)
        }
        printWinningMesage.removeLast()
        printWinningMesage.removeLast()
        print("축하합니다! 겹치는 번호는 \(printWinningMesage) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
    
    
    
    
    
    
