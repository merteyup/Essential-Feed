//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 5.08.2023.
//

import Foundation

public struct FeedItem: Equatable {
    
   public let it: UUID
   public let description : String?
   public let location: String?
   public let imageURL: URL
    
}

