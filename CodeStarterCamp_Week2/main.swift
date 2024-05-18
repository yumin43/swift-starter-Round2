//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var lottoInfomation: Dictionary<String, Set<Int>> = [:]

func selectLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        lottoNumbers.insert(Int.random(in: 1...45))
    }
    
    return lottoNumbers
}

func addLottoInfomation(to round: Dictionary<String, Set<Int>>) {
    lottoInfomation["\(round.count + 1)회차"] = selectLottoNumbers()
}

func printLottoInfomation(to round: Int, with lottoInfomation: Dictionary<String, Set<Int>>) {
    if let lottoRound = lottoInfomation["\(round)회차"] {
        let lottoNumbers = lottoRound.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbers) 입니다")
    } else {
        print("해당 회차는 존재하지 않습니다")
    }
}

for _ in 0..<5 {
    addLottoInfomation(to: lottoInfomation)
}

printLottoInfomation(to: 3, with: lottoInfomation)
