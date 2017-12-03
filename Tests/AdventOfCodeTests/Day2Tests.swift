import XCTest
import AdventOfCode
//@testable import AdventOfCode

class Day2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testChecksumForFirstRow() {
        let day = Day2(input: """
                              5 1 9 5
                              7 5 3
                              2 4 6 8
                              """)
        
        XCTAssertEqual(day.checksum(forRowAtIndex: 0), 8)
    }
    
    func testChecksumForSecondRow() {
        let day = Day2(input: """
                              5 1 9 5
                              7 5 3
                              2 4 6 8
                              """)
        
        XCTAssertEqual(day.checksum(forRowAtIndex: 1), 4)
    }
    
    func testChecksumForThirdRow() {
        let day = Day2(input: """
                              5 1 9 5
                              7 5 3
                              2 4 6 8
                              """)
        
        XCTAssertEqual(day.checksum(forRowAtIndex: 2), 6)
    }
    
    func testChecksum() {
        let day = Day2(input: """
                              5 1 9 5
                              7 5 3
                              2 4 6 8
                              """)
        
        XCTAssertEqual(day.checksum(), 18)
    }
    
    func testChecksum2ForFirstRow() {
        let day = Day2(input: """
                              5 9 2 8
                              9 4 7 3
                              3 8 6 5
                              """)
        
        XCTAssertEqual(day.checksum2(forRowAtIndex: 0), 4)
    }
    
    
}
