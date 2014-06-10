//
//  HashSet.swift
//  MiniSas2
//
//  Created by Jay on 6/9/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import Foundation

struct HashSet<KeyType : Hashable> {
    typealias ValueType = Bool

    var dictionary = Dictionary<KeyType, ValueType>()
    
    init(_ items:KeyType[]){
        for item in items {
            add(item)
        }
    }
    
    init(_ items: KeyType...){
        for item in items {
            add(item)
        }
    }
    
    var count : Int { return dictionary.count }
    
    mutating func add(item: KeyType) {
        dictionary[item] = true
    }
    
    func contains(item: KeyType) -> ValueType {
        return dictionary[item].getLogicValue()
    }
    
    mutating func remove(item: KeyType) {
        dictionary.removeValueForKey(item)
    }
    
    
}

extension HashSet : Sequence {
    
    typealias GeneratorType = HashSetGenerator<KeyType, ValueType>
    
    func generate() -> GeneratorType {
        return HashSetGenerator(dictionaryGenerator: dictionary.generate())
    }
}

// this class should be nested, but it doesn't work for now
class HashSetGenerator<KeyType : Hashable, ValueType> : Generator {
    var items = Array<KeyType>()
    
    init(var dictionaryGenerator: DictionaryGenerator<KeyType, ValueType>) {
        while let item = dictionaryGenerator.next() {
            items += item.0
        }
        items = items.reverse()
    }
    func next() -> KeyType? {
        return items.count > 0 ? items.removeLast() : nil
    }
}