//
//  DictionaryExtensions.swift
//  MiniSas2
//
//  Created by Jay on 6/11/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

struct StringValuePair<T> {
    let key : String
    var value : T?
    
    init(_ key: String, _ value: T?) {
        self.key = key
        self.value = value
    }
    
    init(_ key: String) {
        self.key = key
    }
}