//
//  File.swift
//  
//
//  Created by Lukas Schmidt on 01.10.19.
//

import Foundation

public struct Shape: Codable {
    public var id: String
    public var latitude: Double
    public var longitude: Double
    public var sequence: Int
    public var distanceTraveled: Double?
    
    public init(id: String, latitude: Double, longitude: Double, sequence: Int, distanceTraveled: Double? = nil) {
        self.id = id
        self.latitude = latitude
        self.longitude = longitude
        self.sequence = sequence
        self.distanceTraveled = distanceTraveled
    }
    
    public enum CodingKeys: String, CodingKey {
        case id = "shape_id"
        case latitude = "shape_pt_lat"
        case longitude = "shape_pt_lon"
        case sequence = "shape_pt_sequence"
        case distanceTraveled = "shape_dist_traveled"
   }
}
