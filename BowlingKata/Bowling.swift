class Bowling {
    
    var score:Int {
        return rolls.reduce(0) { $0 + $1.score }
    }
    
    private var currentRoll = 0
    private var rolls = [Frame](count: 10, repeatedValue: Frame())
    
    func roll(pins:Int){
        if currentRoll % 2 == 0 {
            rolls[currentRoll/2].firstRoll = pins
        }
        else {
            rolls[currentRoll/2].secondRoll = pins
        }
        currentRoll += 1
    }
}