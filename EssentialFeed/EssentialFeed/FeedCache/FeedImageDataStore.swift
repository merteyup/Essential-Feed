//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 19.11.2023.
//

import Foundation

public protocol FeedImageDataStore {
    typealias RetrievalResult = Swift.Result<Data?, Error>
    typealias InsertionResult = Swift.Result<Void, Error>
    
    @available(*, deprecated)
    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void)
    
    @available(*, deprecated)
    func retrieve(dataForURL url: URL, completion: @escaping (RetrievalResult) -> Void)
}

public extension FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws {
        let group = DispatchGroup()
        group.enter()
        var result: InsertionResult!
        insert(data, for: url) {
            result = $0
            group.leave()
        }
        group.wait()
        return try result.get()
    }

    func retrieve(dataForURL url: URL) throws -> Data? {
        let group = DispatchGroup()
        group.enter()
        var result: RetrievalResult!
        retrieve(dataForURL: url) {
            result = $0
            group.leave()
        }
        group.wait()
        return try result.get()
    }

    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void) {}
    func retrieve(dataForURL url: URL, completion: @escaping (RetrievalResult) -> Void) {}
}
