//
//  File.swift
//  
//
//  Created by Lukas Schmidt on 22.07.19.
//

import Foundation

public struct Calendar: Codable {
    
    public enum Availability: Int, Codable {
        case available = 1
        case unavailable = 0
    }
    
    public init(
        serviceId: String,
        monday: Availability,
        tuesday: Availability,
        wednesday: Availability,
        thursday: Availability,
        friday: Availability,
        saturday: Availability,
        sunday: Availability,
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
    public var monday: Availability
    public var tuesday: Availability
    public var wednesday: Availability
    public var thursday: Availability
    public var friday: Availability
    public var saturday: Availability
    public var sunday: Availability
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

