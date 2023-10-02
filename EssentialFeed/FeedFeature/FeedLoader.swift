//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 5.08.2023.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
