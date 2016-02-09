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
}
