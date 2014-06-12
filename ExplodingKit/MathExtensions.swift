//
//  MathExtensions.swift
//  MiniSas2
//
//  Created by Jay on 6/11/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import Foundation

extension UInt64 {
    var asNSNumber : NSNumber { return NSNumber(unsignedLongLong: self) }
}

extension NSNumber {
    @objc var asUInt64 : UInt64 { return UInt64(longLongValue) }
}