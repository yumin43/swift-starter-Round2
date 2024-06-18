//
//  LottoNumberFactory.swift
//  CodeStarterCamp_Week2
//
//  Created by 김기현 on 6/8/24.
//

import Foundation

func isLottoNumbersValid(_ myLottoNumbers: [Int]) -> Bool {
    if myLottoNumbers.count != 6 {
        print("로또 번호는 총 6개여야 합니다.")
        return false
    }
    
    let myLottoNumbersSet: Set<Int> = Set(myLottoNumbers)
    if myLottoNumbersSet.count != 6 {
        print("로또 번호에 중복된 번호가 있어선 안됩니다.")
        return false
    }
    
    return true
}

func generateLottoNumbers() -> Set<Int> {
    var lottoNumbers: Set<Int> = Set()
    
    repeat {
        let randomNumber: Int = Int.random(in: 1...45)
        lottoNumbers.insert(randomNumber)
    } while lottoNumbers.count < 6
    
    return lottoNumbers
}

func checkMyLottoNumbers(_ myLottoNumbers: [Int]) {
    if !isLottoNumbersValid(myLottoNumbers) {
        return
    }
    
    let lottoNumbers: Set<Int> = generateLottoNumbers()
    let matchingLottoNumbers: [Int] = lottoNumbers.intersection(myLottoNumbers).sorted()
    
    if matchingLottoNumbers.count < 1 {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    
    let lottoResult: String = matchingLottoNumbers.map(String.init).joined(separator: ", ")
    print("축하합니다! 겹치는 번호는 \(lottoResult) 입니다!")
}
