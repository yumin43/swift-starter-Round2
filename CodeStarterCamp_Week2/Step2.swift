//
//  Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Chaeeun Shin on 2/19/24.
//

let myLottoNumbers: [Int] = [3, 17, 23, 28, 31, 45]
let winningNumbers: Set<Int> = drawRandomNumbers()

func drawRandomNumbers() -> Set<Int> {
    return Set((1...45).shuffled().prefix(6))
}

func checkWinning(compareWith winningNumbers: Set<Int>, from myNumbers: [Int]) {
    let matchingNumbers = winningNumbers.intersection(myNumbers)
    
    if matchingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers.map({ String($0) }).joined(separator: ", ")) 입니다!")
    }
}
