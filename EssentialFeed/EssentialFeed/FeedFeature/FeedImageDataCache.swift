//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 29.11.2023.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
