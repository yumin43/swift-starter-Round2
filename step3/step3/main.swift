
import Foundation


func searchLotto(time: String) {
    var lottoWinningNumber: Dictionary<String, Set> = [String: Set<Int>]()
    var number: Int = 0
    var randomPick: Set<Int> = Set<Int>()

    while number < 5 {
        let round: String = "\(number+1)회차"
        number = number + 1
        
        while randomPick.count < 6 {
            let computersPick = Int.random(in: 1...45)
            randomPick.insert(computersPick)
        }
        
        lottoWinningNumber[round] = randomPick
        randomPick.removeAll()
    }
    
    if let realLotto = lottoWinningNumber[time] {
        print("\(time)의 로또 당첨 번호는 \(realLotto.map{String($0)}.joined(separator: ", ")) 입니다.")
    }
}


searchLotto(time: "5회차")

