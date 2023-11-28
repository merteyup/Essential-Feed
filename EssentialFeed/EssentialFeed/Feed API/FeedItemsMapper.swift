//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 8.08.2023.
//

import Foundation

final class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    private struct Item: Decodable {
        public let id: UUID
        public let description : String?
        public let location: String?
        public let image: URL
        
        var item: FeedImage {
            
            return FeedImage(id: id,
                            description: description,
                            location: location,
                            url: image)
        }
    }
        
    static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return root.items
    }
}
