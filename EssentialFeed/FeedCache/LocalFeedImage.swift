//
//  LocalFeedItem.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 30.08.2023.
//

import Foundation

public struct LocalFeedImage: Equatable, Codable {
    
   public let id: UUID
   public let description : String?
   public let location: String?
   public let url: URL
    
    // MARK: - Init
    
   public init(id: UUID, description: String?, location: String?, url: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.url = url
    }
}
