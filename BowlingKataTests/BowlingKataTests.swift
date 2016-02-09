import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {
    func testNoPinsGame() {
        let bowling = Bowling()
        for _ in 1...20 {
            bowling.roll(0)
        }
        XCTAssertEqual(0, bowling.score)
    }
    
    func testOnePinGame() {
        let bowling = Bowling()
        for _ in 1...20 {
            bowling.roll(1)
        }
        XCTAssertEqual(20, bowling.score)
    }
}
