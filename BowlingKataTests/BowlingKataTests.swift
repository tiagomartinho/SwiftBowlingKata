import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {
    func testExample() {
        let bowling = Bowling()
        bowling.roll(0)
        XCTAssertEqual(0, bowling.score())
    }
}
