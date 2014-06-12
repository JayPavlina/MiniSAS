//
//  CloudManager.swift
//  MiniSas2
//
//  Created by Jay on 6/11/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import Foundation
import CloudKit

let cloudManager = CloudManager()

// will need to store ids for battles in private database
class CloudManager {
    let container = CKContainer.defaultContainer()
    let publicDatabase = CKContainer.defaultContainer().publicCloudDatabase
    
//    struct ZoneNames {
//        static let matchingBattles = "matchingBattles"
//        static let currentBattles = "currentBattles"
//        static let completedBattles = "completedBattles"
//    }
//    
//    func createZoneWithName(name:String) {
//        let zone = CKRecordZone(zoneName: name)
//        publicDatabase.saveRecordZone(zone){ zone, error in
//            if (error) {
//                println("error: " + error.localizedDescription)
//            }
//            else {
//                println("saved zone")
//            }
//        }
//    }
    
    func saveBattleRecord(battleRecord: BattleRecord) {
        let record = battleRecord.toNewCKRecord()
        
        publicDatabase.saveRecord(record){ record, error in
            if (error) {
                println("There was an error: " + error.localizedDescription)
            }
            else {
                println("Record saved!")
            }
        }
    }
}