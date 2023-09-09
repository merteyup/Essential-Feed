//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 9.09.2023.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
    
    public init() {}
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletions) {
        
    }
    
    public func retrieve(completion: @escaping RetrievalCompletions) {
        completion(.empty)
    }
    
}
