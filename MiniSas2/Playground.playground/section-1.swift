struct BattleRecord {
    static let recordType = "Battle"
    
    var ID = StringValuePair<UInt64>("ID")
    
    init(record: CKRecord) {
        ID.value = (record[ID.key] as? NSNumber)?.asUInt64
    }
    
    func toCKRecord(inout record: CKRecord) {
        record[ID.key] = ID.value?.asNSNumber
    }
    
    static func ToNewRecord() -> CKRecord {
        let record = CKRecord(recordType: recordType)
        return toCKRecord(record)
    }
}