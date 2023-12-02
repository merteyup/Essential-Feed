//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 29.11.2023.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
