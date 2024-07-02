//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Eyüp Mert on 17.10.2023.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
