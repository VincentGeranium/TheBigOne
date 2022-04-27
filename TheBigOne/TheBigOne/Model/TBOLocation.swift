//
//  TBOLocation.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/27.
//

import Foundation
import CloudKit

struct TBOLocation {
    static let kAddress: String = "address"
    static let kBannerAsset: String = "bannerAsset"
    static let kDescription: String = "description"
    static let kLocation: String = "location"
    static let kName: String = "name"
    static let kPhoneNumber: String = "phoneNumber"
    static let kSquareAsset: String = "squareAsset"
    static let kWebsiteURL: String = "websiteURL"
    
    
    let ckRecordID: CKRecord.ID
    let address: String
    let bannerAsset: CKAsset!
    let description: String
    let location: CLLocation
    let name: String
    let phoneNumber: String
    let squareAsset: CKAsset!
    let websiteURL: String
    
    init(record: CKRecord) {
        self.ckRecordID = record.recordID
        self.address = record[TBOLocation.kAddress] as? String ?? "N/A"
        self.bannerAsset = record[TBOLocation.kBannerAsset] as? CKAsset
        self.description = record[TBOLocation.kDescription] as? String ?? "N/A"
        self.location = record[TBOLocation.kLocation] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
        self.name = record[TBOLocation.kName] as? String ?? "N/A"
        self.phoneNumber = record[TBOLocation.kPhoneNumber] as? String ?? "N/A"
        self.squareAsset = record[TBOLocation.kSquareAsset] as? CKAsset
        self.websiteURL = record[TBOLocation.kWebsiteURL] as? String ?? "N/A"
    }
}
