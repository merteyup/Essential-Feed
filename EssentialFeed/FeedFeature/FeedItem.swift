//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 5.08.2023.
//

import Foundation

public struct FeedItem: Equatable {
    
   public let id: UUID
   public let description : String?
   public let location: String?
   public let imageURL: URL
    
    // MARK: - Init
    
   public init(id: UUID, description: String?, location: String?, imageURL: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.imageURL = imageURL
    }
}


