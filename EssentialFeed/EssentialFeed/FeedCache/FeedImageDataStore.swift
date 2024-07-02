//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 19.11.2023.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
