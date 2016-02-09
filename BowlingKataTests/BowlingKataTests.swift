import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {
    func testNoPinsGame() {
        let bowling = Bowling()
        bowling.rollPins(0, times: 20)
        XCTAssertEqual(0, bowling.score)
    }
    
    func testOnePinGame() {
        let bowling = Bowling()
        bowling.rollPins(1, times: 20)
        XCTAssertEqual(20, bowling.score)
    }
}

extension Bowling {
    func rollPins(pins:Int, times:Int){
        for _ in 1...times {
            self.roll(pins)
        }
    }
}