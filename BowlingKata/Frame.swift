struct Frame {
    var firstRoll = 0
    var secondRoll = 0
    var score:Int {
        return firstRoll + secondRoll
    }
    var isSpare:Bool {
        return firstRoll + secondRoll == 10
    }
}