//
//  LottoNumbersHistoryFactory.swift
//  CodeStarterCamp_Week2
//
//  Created by 김기현 on 6/16/24.
//

import Foundation

func generateLottoHistories() -> Dictionary<Int, [Int]> {
    var lottoHistories: Dictionary<Int, [Int]> = [:]
    
    var index: Int = 0
    while index < 5 {
        index += 1
        let lottoNumbers: Set<Int> = generateLottoNumbers()
        lottoHistories[index] = Array(lottoNumbers).sorted()
    }
    return lottoHistories
}

func findLottoHistory(index: Int) {
    let lottoHistories: Dictionary<Int, [Int]> = generateLottoHistories()
    
    guard let selectedLottoHistory = lottoHistories[index] else {
        print("\(index)회차에는 로또 당첨 번호가 없어요")
        return
    }
    
    let lottoHistoryResult: String = selectedLottoHistory.map(String.init).joined(separator: ", ")
    print("\(index)회차의 로또 당첨 번호는 \(lottoHistoryResult) 입니다.")
}
