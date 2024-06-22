//
//  LottoNumbersHistoryFactory.swift
//  CodeStarterCamp_Week2
//
//  Created by 김기현 on 6/16/24.
//

import Foundation

let combineIndexWithLottoHistorySuffix = { (index: Int) -> String in
    let lottoHistorySuffix = "회차"
    return "\(index)\(lottoHistorySuffix)"
}

func generateLottoHistories() -> Dictionary<String, [Int]> {
    var lottoHistories: Dictionary<String, [Int]> = [:]
    
    var index: Int = 0
    while index < 5 {
        index += 1
        let lottoNumbers: Set<Int> = generateLottoNumbers()
        let lottoHistoryIndex: String = combineIndexWithLottoHistorySuffix(index)
        lottoHistories[lottoHistoryIndex] = Array(lottoNumbers).sorted()
    }
    return lottoHistories
}

func findLottoHistory(at index: Int) {
    let lottoHistories: Dictionary<String, [Int]> = generateLottoHistories()
    let lottoHistoryIndex: String = combineIndexWithLottoHistorySuffix(index)
    
    guard let selectedLottoHistory = lottoHistories[lottoHistoryIndex] else {
        print("\(lottoHistoryIndex)에는 로또 당첨 번호가 없어요")
        return
    }
    
    let lottoHistoryResult: String = selectedLottoHistory.map(String.init).joined(separator: ", ")
    print("\(lottoHistoryIndex)의 로또 당첨 번호는 \(lottoHistoryResult) 입니다.")
}
