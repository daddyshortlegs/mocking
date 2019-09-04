import XCTest
@testable import Mocking

class MockingTests: XCTestCase {

    func testDummy() {
        let statement = Statement()
        
        let result = statement.generate(user: "daddyshortlegs", session: DummySession())
        
        XCTAssertEqual("4/09/2019\tdaddyshortlegs\tJam", result)
    }



}
