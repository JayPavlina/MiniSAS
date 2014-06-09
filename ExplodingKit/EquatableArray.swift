//
//  EquatableArray.swift
//  MiniSas2
//
//  Created by Jay on 6/9/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import Foundation

struct EquatableArray<T : Equatable> {
    var array : Array<T>
    
    init(_ elements: T[]) {
        array = elements
    }
    
    init(_ elements: T...) {
        array = elements
    }
    
    // Custom
    
    func indexOf(element:T) -> Int? {
        return find(array, element)
    }
    
    func contains(element:T) -> Bool {
        return Swift.contains(array, element)
    }
    
    mutating func remove(element:T) {
        assert(contains(element), "That element is not in the array")
        removeAtIndex(indexOf(element)!)
    }
    
    // ArrayType
    
    mutating func append(newElement: T) {
        array.append(newElement)
    }
    
    mutating func removeAtIndex(index: Int) -> T {
        return array.removeAtIndex(index)
    }
}

extension EquatableArray : MutableCollection, Sliceable {
    var startIndex: Int { return array.startIndex }
    var endIndex: Int { return array.endIndex }
    
    subscript (index: Int) -> T {
        get { return array[index] }
        set { array[index] = newValue }
    }
    
    func generate() -> IndexingGenerator<T[]> {
        return array.generate()
    }
    subscript (subRange: Range<Int>) -> Slice<T> {
        get { return array[subRange] }
        set { array[subRange] = newValue }
    }
}



@assignment @infix func += <T>(inout array: EquatableArray<T>, element: T) {
    array.append(element)
}

@assignment @infix func -= <T>(inout array: EquatableArray<T>, element: T) {
    let index = array.indexOf(element)!
    array.removeAtIndex(index)
}

@prefix func ~ <T : Equatable>(array:T[]) -> EquatableArray<T> {
    return EquatableArray(array)
}