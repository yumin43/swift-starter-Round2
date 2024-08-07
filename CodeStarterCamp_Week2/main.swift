import Foundation


for _ in 1...5 {
    createWinLottoNumbers()
}

// print(winLottoNumbersDict)

>>>>>>> Stashed changes
let myRoundNum: String = "2회차"
if let myRoundWinLottoNumbers = winLottoNumbersDict[myRoundNum] {
    let myRoundWinLottoNumbersString = myRoundWinLottoNumbers.map { String($0) }
    let myRoundWinLottoNumbersJoin: String = myRoundWinLottoNumbersString.joined(separator: ", ")
    print("\(myRoundNum)의 로또 당첨 번호는 \(myRoundWinLottoNumbersJoin) 입니다.")
}
