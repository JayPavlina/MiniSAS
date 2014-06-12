//
//  CloudKitExtensions.swift
//  MiniSas2
//
//  Created by Jay on 6/11/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import CloudKit

extension CKRecord {
    subscript (key: String) -> AnyObject! {
        get { return objectForKey(key) }
        set { setObject(newValue as CKRecordValue, forKey: key) }
    }
}