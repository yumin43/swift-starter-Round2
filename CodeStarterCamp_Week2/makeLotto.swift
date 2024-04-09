func makeLotto() -> Set<Int> {
    var lotto: Set<Int> = Set<Int>()

    while lotto.count < 6 {
        lotto.insert(Int.random(in: 1...45))
    }
    
    return lotto
}
