class Bowling {
    var score:Int{
        var score = 0
        var previousSpare = false
        for frame in frames {
            if previousSpare {
                score += frame.firstRoll
            }
            score += frame.score
            previousSpare = frame.isSpare
        }
        return score
    }
    
    private var frames = [Frame](count: 10, repeatedValue: Frame())
    private var currentRoll = 0
    
    func roll(pins:Int){
        if currentRoll % 2 == 0 {
            frames[currentRoll/2].firstRoll = pins
            if pins == 10 {
                currentRoll += 1
            }
        }
        else {
            frames[currentRoll/2].secondRoll = pins
        }
        currentRoll += 1
    }
}