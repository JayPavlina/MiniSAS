struct JessyMulticastClosure<T, U> {
    init (_ closure: T -> U) {
        self.closures = [Key(): closure]
    }
    
    init (_ closures: Dictionary<Key, T -> U>) {
        self.closures = closures
    }
    
    let closures : Dictionary<Key, T -> U>
    
    func run(t: T) {
        for closure in closures.values {
            closure(t)
        }
    }
}
class Key : Hashable {
    var hashValue : Int { return ObjectIdentifier(self).hashValue }
}

@infix func == (lhs: Key, rhs: Key) -> Bool {
    return lhs === rhs
}

@infix func + <T, U>(left: JessyMulticastClosure<T, U>, right: JessyMulticastClosure<T, U>) -> JessyMulticastClosure<T, U> {
    var closures = left.closures
    for key in right.closures.keys {
        closures[key] = right.closures[key]
    }
    return JessyMulticastClosure(closures)
}

@assignment func += <T, U>(inout left: JessyMulticastClosure<T, U>, right: JessyMulticastClosure<T, U>) -> JessyMulticastClosure<T, U> {
    return left + right
}

@infix func - <T, U>(left: JessyMulticastClosure<T, U>, right: JessyMulticastClosure<T, U>) -> JessyMulticastClosure<T, U> {
    var closures = left.closures
    for key in right.closures.keys {
        closures[key] = nil
    }
    return JessyMulticastClosure(closures)
}

@assignment func -= <T, U>(inout left: JessyMulticastClosure<T, U>, right: JessyMulticastClosure<T, U>) -> JessyMulticastClosure<T, U> {
    return left - right
}