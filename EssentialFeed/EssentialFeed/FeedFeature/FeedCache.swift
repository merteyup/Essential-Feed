//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 29.11.2023.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
