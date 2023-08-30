//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 30.08.2023.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description : String?
    internal let location: String?
    internal let image: URL
}
