//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1,2,3,4,5,6]
var goodLucks = Set<Int>()
var selectedNumbers: [Int] = []

while (goodLucks.count < 6) {
    let random = Int.random(in: 1...45)
    goodLucks.insert(random)
}

func findSameNumbers(my: [Int], com: Set<Int>){
    for i in my {
        for j in com {
            if i == j {
                selectedNumbers.append(i)
            }
        }
    }
    if selectedNumbers.count == 0{
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(selectedNumbers.map{String($0)}.joined(separator: ",")) 입니다!")
    }
}



findSameNumbers(my: myLottoNumbers, com: goodLucks)

