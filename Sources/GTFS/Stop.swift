//
//  File.swift
//  
//
//  Created by Lukas Schmidt on 22.07.19.
//

import Foundation

public enum WheelchairBoarding: Int, Codable {
    case noInformation = 0
    case someVehicles
    case notPossible
}

public enum LocationType: Int, Codable {
       case stopOrPlatform = 0
       case station = 1
       case stationEntracneOrExit = 2
       case genericNode = 3
       case boardingArea = 4
   }

public struct Stop: Codable {
    public init(id: String, code: String?, name: String, description: String?, latitude: Double, longitude: Double, zoneId: String?, url: URL?, locationType: LocationType?, parentStation: String?, stopTimezone: String?, wheelchairBoarding: WheelchairBoarding?, levelId: String?, platformCode: String?) {
        self.id = id
        self.code = code
        self.name = name
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.zoneId = zoneId
        self.url = url
        self.locationType = locationType
        self.parentStation = parentStation
        self.stopTimezone = stopTimezone
        self.wheelchairBoarding = wheelchairBoarding
        self.levelId = levelId
        self.platformCode = platformCode
    }
    
    
    public var id: String
    public var code: String?
    public var name: String
    public var description: String?
    public var latitude: Double
    public var longitude: Double
    public var zoneId: String?
    public var url: URL?
    public var locationType: LocationType?
    public var parentStation: String?
    public var stopTimezone: String?
    public var wheelchairBoarding: WheelchairBoarding?
    public var levelId: String?
    public var platformCode: String?
    
    public enum CodingKeys: String, CodingKey {
            case id = "stop_id"
            case code = "stop_code"
            case name = "stop_name"
            case description = "stop_desc"
            case latitude = "stop_lat"
            case longitude = "stop_lon"
            case zoneId = "zone_id"
            case url = "stop_url"
            case locationType = "location_type"
            case parentStation = "parent_station"
            case stopTimezone = "stop_timezone"
            case wheelchairBoarding = "wheelchair_boarding"
            case levelId = "level_id"
            case platformCode = "platform_code"
    }
}
