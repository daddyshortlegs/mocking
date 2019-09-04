@testable import Mocking

class InvalidPasswordStub : PasswordChecker {
    func isValid(password: String) -> Bool {
        return false
    }
    
    
}
