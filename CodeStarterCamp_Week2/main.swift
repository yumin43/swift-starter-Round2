//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoInfomation: Dictionary<Int, Set<Int>> = [:]

func selectLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}

func addLottoInfomation() {
    lottoInfomation[lottoInfomation.count + 1] = selectLottoNumbers()
}

func printLottoInfomation(to round: Int, with lottoInfomation: Dictionary<Int, Set<Int>>) {
    if let lottoRound = lottoInfomation[round] {
        let lottoNumbers = lottoRound.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers) 입니다")
    } else {
        print("해당 회차는 존재하지 않습니다")
    }
}

func repeatLottoGeneration(with repeatNumbers: Int) {
    for _ in 0..<repeatNumbers {
        addLottoInfomation()
    }
}

repeatLottoGeneration(with: 10)
printLottoInfomation(to: 3, with: lottoInfomation)
