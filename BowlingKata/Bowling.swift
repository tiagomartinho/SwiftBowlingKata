class Bowling {
    
    private var knockedPins = 0
    private var frames = [Frame](count: 10, repeatedValue: Frame())
    
    var score:Int{
        return knockedPins
    }
    
    func roll(pins:Int){
        knockedPins += pins
    }
}