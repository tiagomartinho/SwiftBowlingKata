import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {
    func testEmptyGame() {
        let game = Bowling()
        for _ in 1...20 {
            game.roll(0)
        }
        XCTAssertEqual(0, game.score)
    }
}
