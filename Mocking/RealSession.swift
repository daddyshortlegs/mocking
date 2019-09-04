class RealSession : Session {
    
    let epoch: TimeInterval
    
    init() {
        epoch = Date().timeIntervalSince1970
    }
    
    func doSomething(somefink: String) {
        
    }
    
    func timeSpentDoingSomething() -> Int {
        return 46
    }
    
    func isLoggedIn() -> Bool {
        return true
    }
    
    func sessionDuration() -> TimeInterval {
        let now = Date().timeIntervalSinceNow
        return now - epoch
    }

}
