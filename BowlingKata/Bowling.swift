class Bowling {
    var score:Int{
        return knockedPins
    }
    
    private var knockedPins = 0
    private var frames = [Frame](count: 10, repeatedValue: Frame())
    private var currentRoll = 0
    
    func roll(pins:Int){
        knockedPins += pins
        currentRoll += 1
    }
}