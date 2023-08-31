//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 30.08.2023.
//

import Foundation

public enum RetrieveCachedFeedResult {
    case empty
    case found(feed: [LocalFeedImage], timestamp: Date)
    case failure(Error)
}

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletions = (Error?) -> Void
    typealias RetrievalCompletions = (RetrieveCachedFeedResult) -> Void
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ feed: [LocalFeedImage ], timestamp: Date, completion: @escaping InsertionCompletions)
    func retrieve(completion: @escaping RetrievalCompletions)
}



