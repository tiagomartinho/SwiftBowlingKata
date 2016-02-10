import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {
    let game = Bowling()

    func testEmptyGame() {
        game.roll(0, times: 20)
        XCTAssertEqual(0, game.score)
    }
    
    func testOnePinPerRollGame() {
        game.roll(1, times: 20)
        XCTAssertEqual(20, game.score)
    }
    
    func testSpareGame() {
        game.roll(3)
        game.roll(7)
        game.roll(4)
        game.roll(0, times: 17)
        XCTAssertEqual(18, game.score)
    }
}

extension Bowling {
    func roll(pins:Int, times:Int){
        for _ in 1...times {
            self.roll(pins)
        }
    }
}