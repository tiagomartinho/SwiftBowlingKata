import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {

    let bowling = Bowling()

    private func rollPins(pins:Int, times:Int){
        for _ in 1...times {
            bowling.roll(pins)
        }
    }
    
    func testNoPinsGame() {
        rollPins(0,times:20)
        XCTAssertEqual(0, bowling.score)
    }
    
    func testOnePinGame() {
        bowling.roll(1)
        rollPins(0,times:19)
        XCTAssertEqual(1, bowling.score)
    }
}
