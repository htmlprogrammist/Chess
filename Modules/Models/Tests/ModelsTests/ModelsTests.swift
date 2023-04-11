import XCTest
@testable import Models

final class ModelsTests: XCTestCase {
    
    /**
     In the tests below we check that figures are correctly set with both colors.
     */
    func testPawnFigures() throws {
        // arrange
        let whitePawn: Figure = Figures.White.pawn
        let blackPawn: Figure = Figures.Black.pawn
        
        // act assert
        XCTAssertEqual(whitePawn.name, "Pawn")
        XCTAssertEqual(blackPawn.name, "Pawn")
        
        XCTAssertEqual(whitePawn.image, "♟")
        XCTAssertEqual(blackPawn.image, "♙")
    }
}
