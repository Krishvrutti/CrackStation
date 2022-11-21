import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testOneLetterPassword() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8")
        let expectedResult = "a"
        
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testTwoLetterPassword() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "f87cf1a14902692dfa942c109550a2e672b61e99")
        let expectedResult = "kV"
        
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testTwoDigitPassword() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "dc0906ed36c05efab54534491e0d4e9a3391563f")
        let expectedResult = "l9"
        
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testInvalidPassword() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "9d198c47e83877d5fe29d6f556606fc44325b31a")
        
        
        
        XCTAssertEqual(result, nil)

    }
}

