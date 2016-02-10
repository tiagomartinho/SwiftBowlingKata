class Bowling {
    
    private var knockedPins = 0
    
    var score:Int{
        return knockedPins
    }
    
    func roll(pins:Int){
        knockedPins += pins
    }
}