//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


func selectLottoNumbers() -> Set<Int> {
    var lottoNums: Set<Int> = []
    
    while lottoNums.count < 6 {
        let randomNum = Int.random(in: 1...45)
        lottoNums.insert(randomNum)
    }
    
    return lottoNums
}

func checkNumber(with myNums: Set<Int>, to lottoNums: Set<Int>) {
    if myNums.intersection(lottoNums).count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let commonNumbers = myNums.intersection(lottoNums).map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(commonNumbers) 입니다!")
    }
}

let myNumbers = selectLottoNumbers()
let lottoNumbers = selectLottoNumbers()

checkNumber(with: myNumbers, to: lottoNumbers)
