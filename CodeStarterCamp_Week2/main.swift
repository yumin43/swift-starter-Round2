//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func lottoNumberGenerator() -> Set<Int> {
    var numberSet: Set<Int> = Set(1...45)
    var selectedNumbers: Set<Int> = []
    
    for _ in 0..<6 {
        let selectedNumber: Int = numberSet.randomElement()!
        selectedNumbers.insert(selectedNumber)
        numberSet.remove(selectedNumber)
    }
    return selectedNumbers
}

func checkNumber(with myLottoNumbers: Set<Int>) {
    let winningNumbers: Set<Int> = lottoNumberGenerator()
    let sameNumbers: Set<Int> = winningNumbers.intersection(myLottoNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let numbers = sameNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(numbers) 입니다!")
    }
}

let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
checkNumber(with: myLottoNumbers)
