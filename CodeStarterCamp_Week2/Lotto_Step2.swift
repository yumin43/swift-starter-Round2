//
//  Lotto_Step2.swift
//  CodeStarterCamp_Week2
//
//  Created by Sebin Kwon on 5/8/24.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

func makeLottoNumbers() -> Set<Int> {
    var winningLottoSet = Set<Int>()
    while winningLottoSet.count < 6 {
        winningLottoSet.insert(Int.random(in: 1...45))
    }
    return winningLottoSet
}


