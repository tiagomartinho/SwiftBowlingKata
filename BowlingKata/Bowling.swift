class Bowling {
    
    var score:Int {
        var previousSpare = false
        var score = 0
        for frame in frames {
            if previousSpare {
                score += frame.firstRoll
                previousSpare = false
            }
            score += frame.score
            previousSpare = (frame.score == 10)
        }
        return score
    }
    
    private var currentRoll = 0
    private var frames = [Frame](count: 10, repeatedValue: Frame())
    
    func roll(pins:Int){
        if currentRoll % 2 == 0 {
            frames[currentRoll/2].firstRoll = pins
        }
        else {
            frames[currentRoll/2].secondRoll = pins
        }
        currentRoll += 1
    }
}