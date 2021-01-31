//
//  File.swift
//  
//
//  Created by Lukas Schmidt on 22.07.19.
//

import Foundation

public enum Timepoint: Int, Codable {
    case approximate = 0
    case exact
}

public struct StopTime: Codable {
    
    public init(
        tripId: String,
        arrivalTime: String? = nil,
        departureTime: String? = nil,
        stopId: String,
        stopSequence: Int,
        stopHeadsign: String? = nil,
        pickupType: StopTime.Boarding? = nil,
        dropOffType: StopTime.Boarding? = nil,
        shapeDistTraveled: Double? = nil,
        timepoint: Timepoint? = nil
    ) {
        self.tripId = tripId
        self.arrivalTime = arrivalTime
        self.departureTime = departureTime
        self.stopId = stopId
        self.stopSequence = stopSequence
        self.stopHeadsign = stopHeadsign
        self.pickupType = pickupType
        self.dropOffType = dropOffType
        self.shapeDistTraveled = shapeDistTraveled
        self.timepoint = timepoint
    }
    
    public enum Boarding: Int, Codable {
        case scheduled = 0
        case none
        case phoneAgency
        case coordinateWithDriver
    }
    
    public var tripId: String
    public var arrivalTime: String?
    public var departureTime: String?
    public var stopId: String
    public var stopSequence: Int
    public var stopHeadsign: String?
    public var pickupType: Boarding?
    public var dropOffType: Boarding?
    public var shapeDistTraveled: Double?
    public var timepoint: Timepoint?
    
    public enum CodingKeys: String, CodingKey {
        case tripId = "trip_id"
        case arrivalTime = "arrival_time"
        case departureTime = "departure_time"
        case stopId = "stop_id"
        case stopSequence = "stop_sequence"
        case stopHeadsign = "stop_headsign"
        case pickupType = "pickup_type"
        case dropOffType = "drop_off_type"
        case shapeDistTraveled = "shape_dist_traveled"
        case timepoint = "timepoint"
    }
}
