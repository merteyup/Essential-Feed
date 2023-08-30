//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 8.08.2023.
//

import Foundation

internal final class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    private struct Item: Decodable {
        public let id: UUID
        public let description : String?
        public let location: String?
        public let image: URL
        
        var item: FeedItem {
            
            return FeedItem(id: id,
                            description: description,
                            location: location,
                            imageURL: image)
        }
    }
    
    private static var OK_200 : Int {return 200}
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == OK_200,
              let root = try? JSONDecoder().decode(Root.self, from: data)else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return root.items
    }
}
