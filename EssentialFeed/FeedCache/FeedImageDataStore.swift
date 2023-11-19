//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 19.11.2023.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
