//
//  BattleRecord.swift
//  MiniSas2
//
//  Created by Jay on 6/11/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import Foundation
import CloudKit

struct BattleRecord {
    typealias BR = BattleRecord
    static let recordType = "Battle"
    
    var record : CKRecord
    
    static let battleIDKey = "battleID"; var battleID : UInt64? {
    get { return (record[BR.battleIDKey] as? NSNumber)?.asUInt64 }
    set { record[BR.battleIDKey] = newValue?.asNSNumber } }
    
    static let levelIDKey = "levelID"; var levelID : UInt64? {
    get { return (record[BR.levelIDKey] as? NSNumber)?.asUInt64 }
    set { record[BR.levelIDKey] = newValue?.asNSNumber } }
    
    static let matchingDataKey = "matchingData"; var matchingData : UInt64? {
    get { return (record[BR.matchingDataKey] as? NSNumber)?.asUInt64 }
    set { record[BR.matchingDataKey] = newValue?.asNSNumber } }
    
    static let creationDateKey = "creationDate"; var creationDate : NSDate? {
    get { return record[BR.creationDateKey] as? NSDate }
    set { record[BR.creationDateKey] = newValue } }
    
    init(record: CKRecord) {
        self.record = record
    }
    
    init() {
        record = CKRecord(recordType: BR.recordType)
    }
}

// need to make a superclass for this
// this is a singleton
struct GameStatsRecord {
    typealias GS = GameStatsRecord
    static let recordType = "GameStats"
    static let recordID = "2d758ec8-8a12-47b3-925f-321e311666c4"
    
    static let currentBattleIDKey = "currentBattleID"; var currentBattleID : UInt64? {
    get { return (record[GS.currentBattleIDKey] as? NSNumber)?.asUInt64 }
    set { record[GS.currentBattleIDKey] = newValue?.asNSNumber } }
}