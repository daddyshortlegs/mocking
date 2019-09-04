@testable import Mocking

class ValidPasswordStub: PasswordChecker {
    func isValid(password: String) -> Bool {
        return true
    }
}
