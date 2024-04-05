//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

// 전역변수, 지역변수
// 함수 사용 > 랜덤 로또 번호 저장
// 네이밍
// 함수 매개변수 네이밍 모호
// set특징을 활용해서 컴, 나 의 수에서 동일한 숫자 찾기
// map에 대해 설명



import Foundation

let myLottoNumbers: [Int] = [1,2,3,4,5,6]

func pickLottoNum() -> Set<Int> {
    var lottoNum = Set<Int>()
    while (lottoNum.count < 6) {
        let random = Int.random(in: 1...45)
        lottoNum.insert(random)
    }
    return lottoNum
}

func findSameNumbers(myNum: [Int]) {
    
    let boxOfLottoNum = pickLottoNum()
    let selectedNumbers: Set<Int> = boxOfLottoNum.intersection(myNum)
    
    if selectedNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(selectedNumbers.map{String($0)}.joined(separator: ",")) 입니다!")
    }
    
}



findSameNumbers(myNum: myLottoNumbers)

