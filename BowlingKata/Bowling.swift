class Bowling {
    var score:Int{
        return knockedPins
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