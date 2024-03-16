//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 8.08.2023.
//

import Foundation

public final class FeedItemsMapper {
    
    private struct Root: Decodable {
        
        private let items: [RemoteFeedItem]

            private struct RemoteFeedItem: Decodable {
                let id: UUID
                let description: String?
                let location: String?
                let image: URL
            }

            var images: [FeedImage] {
                items.map { FeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.image) }
            }
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
        
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [FeedImage] {
        guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return root.images
    }
}
