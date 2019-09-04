@testable import Mocking

class DummySession : Session {
    func doSomething(somefink: String) {
        // do nothing, I'm a dummy
    }

    func timeSpentDoingSomething() -> Int {
        return 0
    }
}
