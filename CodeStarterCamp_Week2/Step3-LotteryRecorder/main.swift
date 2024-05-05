//
//  main.swift
//  Step3-save-Lotto
//
//  Created by 이재영 on 2024/05/04.
//

import Foundation

func convertToString(numbers: Array<Int>, separator: String = ", ") -> String {
    return numbers.map {String($0)}.joined(separator: separator)
}

func lotteryMachine() -> [Int] {
    var numbers: Set<Int> = Set(1...45)
    var winningNumber: Set<Int> = []
    
    while winningNumber.count < 6 {
        let number = numbers.removeFirst()
        winningNumber.insert(number)
    }
    return winningNumber.sorted()
}

func lotteryRecorder(rounds : Int) -> [String : [Int]] {
    guard rounds > 0 else {
        return [:]
    }
    
    var lottoNumberOfRound : [String : [Int]] = [:]
    
    for round in 1...rounds {
        lottoNumberOfRound["\(round)회차"] = lotteryMachine()
    }
    return lottoNumberOfRound
}

func lottertyRecordMessenger(round: Int, lottoNumberRecords : [String : [Int] ] ) {
    guard let lotteryNumber = lottoNumberRecords["\(round)회차"] else {
        print("기록되지 않은 회차입니다.")
        return
    }
    
    print("\(round)회차의 로또 당첨 번호는 " + convertToString(numbers: lotteryNumber) + " 입니다.")
}

let lotteryRecords = lotteryRecorder(rounds: 5)

lottertyRecordMessenger(round : 1,  lottoNumberRecords: lotteryRecords)
