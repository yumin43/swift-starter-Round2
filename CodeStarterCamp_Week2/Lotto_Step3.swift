//
//  Lotto_Step3.swift
//  CodeStarterCamp_Week2
//
//  Created by Sebin Kwon on 5/15/24.
//

import Foundation

var lottoNumbersByRound = [String: Set<Int>]()

func addLottoNumbersByRound(for round: Int) {
    for i in 1...round {
        lottoNumbersByRound["\(i)회차"] = makeLottoNumbers()
    }
}

func printLottoNumbers(of round: Int, with lottoNumbersByRound: [String: Set<Int>]) {
    if let lottoNumbers = lottoNumbersByRound["\(round)회차"] {
        let lottoNumbersString = lottoNumbers.map { String($0) }.joined(separator: ", ")
        print("\(round)회차의 로또 당첨 번호는 \(lottoNumbersString) 입니다.")
    } else {
        print("\(round)회차는 존재하지 않습니다. 1회부터 \(lottoNumbersByRound.count)회까지의 범위에 내에서만 조회 가능합니다.")
    }
}


