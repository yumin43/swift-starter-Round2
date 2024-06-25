//
//  LottoNumbersHistoryFactory.swift
//  CodeStarterCamp_Week2
//
//  Created by 김기현 on 6/16/24.
//

import Foundation

func generateLottoHistories() -> Dictionary<Int, [Int]> {
    var lottoHistories: Dictionary<Int, [Int]> = [:]
    
    var round: Int = 0
    while round < 5 {
        round += 1
        let lottoNumbers: Set<Int> = generateLottoNumbers()
        lottoHistories[round] = Array(lottoNumbers).sorted()
    }
    return lottoHistories
}

func findLottoHistory(round: Int) {
    let lottoHistories: Dictionary<Int, [Int]> = generateLottoHistories()
    
    guard let selectedLottoHistory = lottoHistories[round] else {
        print("\(round)회차에는 로또 당첨 번호가 없어요")
        return
    }
    
    let lottoHistoryResult: String = selectedLottoHistory.map(String.init).joined(separator: ", ")
    print("\(round)회차의 로또 당첨 번호는 \(lottoHistoryResult) 입니다.")
}
