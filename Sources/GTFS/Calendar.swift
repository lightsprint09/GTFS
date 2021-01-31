//
//  File.swift
//  
//
//  Created by Lukas Schmidt on 22.07.19.
//

import Foundation

public struct Calendar: Codable {
    
    public init(
        serviceId: String,
        monday: Bool,
        tuesday: Bool,
        wednesday: Bool,
        thursday: Bool,
        friday: Bool,
        saturday: Bool,
        sunday: Bool,
        startDate: Date,
        endDate: Date
    ) {
        self.serviceId = serviceId
        self.monday = monday
        self.tuesday = tuesday
        self.wednesday = wednesday
        self.thursday = thursday
        self.friday = friday
        self.saturday = saturday
        self.sunday = sunday
        self.startDate = startDate
        self.endDate = endDate
    }
    
    
    public var serviceId: String
    public var monday: Bool
    public var tuesday: Bool
    public var wednesday: Bool
    public var thursday: Bool
    public var friday: Bool
    public var saturday: Bool
    public var sunday: Bool
    public var startDate: Date
    public var endDate: Date
    
    public enum CodingKeys: String, CodingKey {
        case serviceId = "service_id"
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
        case sunday
        case startDate = "start_date"
        case endDate = "end_date"
        
    }
}

