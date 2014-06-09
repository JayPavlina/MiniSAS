//
//  JayMulticastClosure.swift
//  MiniSas2
//
//  Created by Jay on 6/8/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import Foundation

struct JayMulticastClosure<T, U> {
    
    var closureWrappers : ClosureWrapper<T,U>[] = []
    
    //    init (_ closureWrappers: ClosureWrapper<T,U>[]) {
    //        self.closureWrappers = closureWrappers
    //    }
    //
    //    init (_ closureWrappers: ClosureWrapper<T,U>...) {
    //        self.init(closureWrappers)
    //    }
    //
    //    init (_ closures: (T -> U)[]) {
    //        closureWrappers = closures.map{ ClosureWrapper($0) }
    //    }
    //
    //    init (_ closures: (T -> U)...) {
    //        closureWrappers = closures.map{ ClosureWrapper($0) }
    //    }
    
    func run(t: T) {
        for closureWrapper in closureWrappers {
            closureWrapper.closure(t)
        }
    }
    
    mutating func add(closure: (T -> U)) -> ClosureWrapper<T,U> {
        let closureWrapper = ClosureWrapper(closure)
        closureWrappers += closureWrapper
        return closureWrapper
    }
    
    mutating func remove(closureWrapper: ClosureWrapper<T,U>) {
        if let index = find(closureWrappers, closureWrapper) {
            closureWrappers.removeAtIndex(index)
        }
    }
}

class ClosureWrapper<T, U> : Equatable {
    
    let closure : (T -> U)
    
    init (_ closure: (T -> U)) {
        self.closure = closure
    }
}

@infix func == <T,U>(lhs: ClosureWrapper<T, U>, rhs: ClosureWrapper<T, U>) -> Bool {
    return lhs === rhs
}

@assignment @infix func += <T,U>(inout left: JayMulticastClosure<T,U>, right: (T -> U)) -> ClosureWrapper<T,U> {
    return left.add(right)
}

@assignment @infix func -= <T,U>(inout left: JayMulticastClosure<T,U>, right: ClosureWrapper<T,U>) {
    left.remove(right)
}