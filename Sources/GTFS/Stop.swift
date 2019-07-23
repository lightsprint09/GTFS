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
    public init(id: String, code: String?, name: String, description: String, latitude: Double, longitude: Double, zoneId: String?, url: URL?, locationType: LocationType?, parentStation: String?, stopTimezone: String?, wheelchairBoarding: WheelchairBoarding?, levelId: String?, platformCode: String?) {
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
    
    
    public let id: String
    public let code: String?
    public let name: String
    public let description: String
    public let latitude: Double
    public let longitude: Double
    public let zoneId: String?
    public let url: URL?
    public let locationType: LocationType?
    public let parentStation: String?
    public let stopTimezone: String?
    public let wheelchairBoarding: WheelchairBoarding?
    public let levelId: String?
    public let platformCode: String?
    
    public enum CodingKeys: String, CodingKey {
            case id = "stop_id"
            case code = "stop_code"
            case name = "agency_name"
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
