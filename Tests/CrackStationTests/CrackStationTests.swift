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
    func testThreeLetterPassword() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "85ceab36fa6b16b699d89b663d8538909737b0c5ccadcace9eb89858044f6c26")
        let expectedResult = "Ab?"
        
        
        
        XCTAssertEqual(result, expectedResult)

    }
    func testThreeDigitPassword() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "62fe7bf6fe4d0595b2f28f27fc02c8610fa56b72f0378475fecae23b15fe82ff")
        let expectedResult = "kL8"
        
        
        
        XCTAssertEqual(result, expectedResult)

    }
    func testThreeDigit1Password() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "763290492ddb21d521ecf684e58766b45531996d67db89a6901ee64cc58e657c")
        let expectedResult = "84!"
        
        
        
        XCTAssertEqual(result, expectedResult)

    }
    func testThreeLetter1Password() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "639c52e0e2f340ba033a30dedd9d7104e014c3e53763435795aeabe7b311666b")
        let expectedResult = "Kvr"
        
        
        
        XCTAssertEqual(result, expectedResult)

    }
    func testThreeLetter2Password() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "57fdef9ccd9f12820c67125831c7ba978effbc24")
        let expectedResult = "Fgl"
        
        
        
        XCTAssertEqual(result, expectedResult)

    }
    func testTwoLetter1Password() throws {
        let crackStation = CrackStation()
        let result = crackStation.decrypt(shaHash: "205923b569cf1d5ec5b1337e5551bc6b702d1a41970ebb1bd06a38d6a46b614a")
        let expectedResult = "ql"
        
        
        
        XCTAssertEqual(result, expectedResult)

    }
}

