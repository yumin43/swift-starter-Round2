//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func lottoNumberGenerator() -> Set<Int> {
    var numberSet: Set<Int> = Set(1...45)
    var selectedNumbers: Set<Int> = []
    
    for _ in 0..<6 {
        let selectedNumber: Int = numberSet.randomElement()!
        selectedNumbers.insert(selectedNumber)
        numberSet.remove(selectedNumber)
    }
    return selectedNumbers
}

func checkNumber(with myLottoNumbers: Set<Int>) {
    let winningNumbers: Set<Int> = lottoNumberGenerator()
    let sameNumbers: Set<Int> = winningNumbers.intersection(myLottoNumbers)
    
    if sameNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        let numbers = sameNumbers.map { String($0) }.joined(separator: ", ")
        print("축하합니다! 겹치는 번호는 \(numbers) 입니다!")
    }
}

func generateNumbers(repeats count: Int) -> [Int: Set<Int>] {
    var winningNumbersList : [Int: Set<Int>] = [:]
    for _ in 0..<count {
        let newNumbers = lottoNumberGenerator()
        winningNumbersList[winningNumbersList.count + 1] = newNumbers
    }
    return winningNumbersList
}

func searchWinningNumbers(index: Int, in winningNumbersList: [Int: Set<Int>]) {
    if let winningNumbers = winningNumbersList[index] {
        let numbers = winningNumbers.map { String($0) }.joined(separator: ", ")
        print("\(index)회차의 로또 당첨 번호는 \(numbers) 입니다.")
    } else {
        print("존재하지 않는 회차입니다.")
    }
}

let winningNumbersList = generateNumbers(repeats: 5)
searchWinningNumbers(index: 3, in: winningNumbersList)
