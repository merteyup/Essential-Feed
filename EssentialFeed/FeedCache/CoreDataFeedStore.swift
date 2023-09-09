//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 9.09.2023.
//

import CoreData

public final class CoreDataFeedStore: FeedStore {
    
    public init() {}
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletions) {
        
    }
    
    public func retrieve(completion: @escaping RetrievalCompletions) {
        completion(.empty)
    }
  

    private class ManagedCache: NSManagedObject {
        @NSManaged var timestamp: Date
        @NSManaged var feed: NSOrderedSet
    }

    private class ManagedFeedImage: NSManagedObject {
        @NSManaged var id: UUID
        @NSManaged var imageDescription: String?
        @NSManaged var location: String?
        @NSManaged var url: URL
        @NSManaged var cache: ManagedCache
    }
    
}
