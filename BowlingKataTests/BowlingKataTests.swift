import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {
    let bowling = Bowling()

    func testNoPinsGame() {
        bowling.rollPins(0, times: 20)
        XCTAssertEqual(0, bowling.score)
    }
    
    func testOnePinGame() {
        bowling.rollPins(1, times: 20)
        XCTAssertEqual(20, bowling.score)
    }
    
    func testSpareGame() {
        bowling.rollSpare()
        bowling.roll(5)
        bowling.rollPins(0, times: 17)
        XCTAssertEqual(20, bowling.score)
    }
    
    func testStrikeGame() {
        bowling.rollStrike()
        bowling.roll(5)
        bowling.roll(4)
        bowling.rollPins(0, times: 16)
        XCTAssertEqual(28, bowling.score)
    }
}

extension Bowling {
    func rollPins(pins:Int, times:Int){
        for _ in 1...times {
            self.roll(pins)
        }
    }
    
    func rollSpare(){
        self.roll(3)
        self.roll(7)
    }
    
    func rollStrike(){
        self.roll(10)
    }
}