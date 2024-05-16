//
//  Lotto_Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Sebin Kwon on 5/8/24.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLottoNumbers() -> Set<Int> {
    var winningLottoNumbers = Set<Int>()
    while winningLottoNumbers.count < 6 {
        winningLottoNumbers.insert(Int.random(in: 1...45))
    }
    return winningLottoNumbers
}

func checkLottoNumbers(winning: Set<Int>) {
    let myLottoSet = Set(myLottoNumbers)
    let matchingNumbers: Set<Int> = myLottoSet.intersection(winning)
    if matchingNumbers.count > 0 {
    let matchingString = matchingNumbers.map{ String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(matchingString) 입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}
