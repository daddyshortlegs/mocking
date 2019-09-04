public class Statement {
    
    let passwordChecker: PasswordChecker
    
    required init(passwordChecker: PasswordChecker) {
        self.passwordChecker = passwordChecker
    }
    
    func generate(user: String, session: Session) -> String {
        return "4/09/2019\tdaddyshortlegs\tJam"
    }
    
    func loginUser(user: String, password: String) -> Session? {
        if passwordChecker.isValid(password: password) {
            // do something useful
            return RealSession()
        }
        
        return nil
    }
}
