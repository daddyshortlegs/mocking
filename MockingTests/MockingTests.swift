import XCTest
@testable import Mocking

class MockingTests: XCTestCase {

    func testDummy() {
        let statement = Statement(passwordChecker: InvalidPasswordStub())
        let dontCare = DummySession()
        
        let result = statement.generate(user: "daddyshortlegs", session: dontCare)
        
        XCTAssertEqual("4/09/2019\tdaddyshortlegs\tJam", result)
    }

    
    
    // Stubs
    func testStub_invalidLogin() {
        let statement = Statement(passwordChecker: InvalidPasswordStub())

        let result = statement.loginUser(user: "daddyshortlegs", password: "notverystrong")
        
        XCTAssertNil(result)
    }

    func testStub_validLogin() {
        let statement = Statement(passwordChecker: ValidPasswordStub())
        
        let result = statement.loginUser(user: "daddyshortlegs", password: "yesisvalid")
        
        XCTAssertNotNil(result)
    }

    
}
