protocol Session {
    func doSomething(somefink: String)
    
    func timeSpentDoingSomething() -> Int
    
    func isLoggedIn() -> Bool
    
    func sessionDuration() -> TimeInterval
}
