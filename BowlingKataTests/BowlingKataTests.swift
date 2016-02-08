import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {

    let bowling = Bowling()
    let kNumberOfFrames = 10
    
    private func rollPins(pins:Int, times:Int){
        for _ in 1...times {
            bowling.roll(pins)
        }
    }
    
    func testNoPinsGame() {
        rollPins(0,times:kNumberOfFrames)
        XCTAssertEqual(0, bowling.score)
    }
    
    func testOneEverytimePinGame() {
        rollPins(1,times:kNumberOfFrames)
        XCTAssertEqual(10, bowling.score)
    }
    
    func testOneSpareGame() {
        bowling.roll(3)
        bowling.roll(7)
        bowling.roll(5)
        rollPins(0,times:kNumberOfFrames - 3)
        XCTAssertEqual(20, bowling.score)
    }
}
