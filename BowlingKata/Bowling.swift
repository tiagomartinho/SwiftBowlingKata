class Bowling {
    var score:Int{
        var score = 0
        for frame in frames {
            score += frame.score
        }
        return score
    }
    
    private var knockedPins = 0
    private var frames = [Frame](count: 10, repeatedValue: Frame())
    private var currentRoll = 0
    
    func roll(pins:Int){
        knockedPins += pins
        if currentRoll % 2 == 0 {
            frames[currentRoll/2].firstRoll = pins
        }
        else {
            frames[currentRoll/2].secondRoll = pins
        }
        currentRoll += 1
    }
}