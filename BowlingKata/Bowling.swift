class Bowling {
    
    var score:Int {
        return rolls.reduce(0, combine: +)
    }
    
    private var currentRoll = 0
    private var rolls = [Int](count: 20, repeatedValue: 0)
    
    func roll(pins:Int){
        rolls[currentRoll] = pins
        currentRoll += 1
    }
}