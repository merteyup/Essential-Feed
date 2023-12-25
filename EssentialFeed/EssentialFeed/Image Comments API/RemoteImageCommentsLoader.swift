//
//  RemoteImageCommentsLoader.swift
//  EssentialFeedTests
//
//  Created by Eyüp Mert on 13.12.2023.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
