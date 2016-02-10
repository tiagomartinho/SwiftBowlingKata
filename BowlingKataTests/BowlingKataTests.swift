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
        game.rollSpare()
        game.roll(4)
        game.roll(0, times: 17)
        XCTAssertEqual(18, game.score)
    }
    
    func testStrikeGame() {
        game.rollStrike()
        game.roll(4)
        game.roll(3)
        game.roll(0, times: 16)
        XCTAssertEqual(24, game.score)
    }
    
    func testStrikeAtTheEndGame() {
        game.roll(0, times: 18)
        game.rollSpare()
        game.roll(4)
        XCTAssertEqual(18, game.score)
    }
    
    func testPerfectGame() {
        game.roll(20, times: 12)
        XCTAssertEqual(300, game.score)
    }
}

extension Bowling {
    func roll(pins:Int, times:Int){
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