//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation


func selectLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = []
    
    while lottoNumbers.count < 6 {
        let randomNumber = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    }
    
    return lottoNumbers
}

func checkNumber(with myNumbers: Set<Int>, to lottoNumbers: Set<Int>) {
    if myNumbers.intersection(lottoNumbers).count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let commonNumbers = myNumbers.intersection(lottoNumbers).map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(commonNumbers) 입니다!")
    }
}

let myNumbers = selectLottoNumbers()
let lottoNumbers = selectLottoNumbers()

checkNumber(with: myNumbers, to: lottoNumbers)
