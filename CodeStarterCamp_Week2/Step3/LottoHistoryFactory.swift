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

// 스위프트 컴파일러의 타입추론에 대해서 궁금했다. 타입추론의 범위가 과연 어디까지 일까. 어떤 거는 타입추론을 해야하는 것이고, 어떤 것은 타입 추론이라는 과정이 들어가지 않아서 속도에 영향을 전혀 안줄까?
func generateLottoHistories() -> Dictionary<String, [Int]> {
    var lottoHistories: Dictionary<String, [Int]> = [:]
    
    // 새로운 로또 당첨 번호를 생성하면, 직전 회차에 1을 더해 금번 회차를 만들어냅니다.
    var index: Int = 1
    while index < 6 {
        let lottoNumbers: Set<Int> = generateLottoNumbers()
        let lottoHistoryIndex: String = combineIndexWithLottoHistorySuffix(index)
        lottoHistories[lottoHistoryIndex] = Array(lottoNumbers).sorted()
        index += 1
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
