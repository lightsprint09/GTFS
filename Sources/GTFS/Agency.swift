//
//  File.swift
//  
//
//  Created by Lukas Schmidt on 21.07.19.
//

import Foundation

public struct Agency: Codable {
    
    public var id: String
    public var name: String
    public var url: URL
    public var timezone: String
    public var language: String?
    public var phone: String?
    public var email: String?
    public var fareUrl: URL?
    
    public init(
        id: String,
        name: String,
        url: URL,
        timezone: String,
        language: String? = nil,
        phone: String? = nil,
        email: String? = nil,
        fareUrl: URL? = nil
    ) {
            self.id = id
            self.name = name
            self.url = url
            self.timezone = timezone
            self.language = language
            self.phone = phone
            self.email = email
            self.fareUrl = fareUrl
    }
    
    public enum CodingKeys: String, CodingKey {
        case id = "agency_id"
        case name = "agency_name"
        case url = "agency_url"
        case timezone = "agency_timezone"
        case language = "agency_lang"
        case phone = "agency_phone"
        case fareUrl = "agency_fare_url"
        case email = "agency_email"
    }
        
}
