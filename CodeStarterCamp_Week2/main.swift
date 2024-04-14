var roundNumbers: Dictionary<String, Set<Int>> = [String: Set<Int>]()

func searchWinningNumber(round: Int) {
    if let winningNumber = roundNumbers["\(round)회차"] {
        print("\(round)회차의 로또 당첨 번호는 \(makeList(numbers: winningNumber)) 입니다.")
    } else {
        print("\(round)회차는 아직 추첨되지 않았습니다.")
    }
}

func makeList(numbers: Set<Int>) -> String {
    return numbers.map{String($0)}.joined(separator: ", ")
}

for _ in 0...4 {
    makeLotto()
}

searchWinningNumber(round: 2)
