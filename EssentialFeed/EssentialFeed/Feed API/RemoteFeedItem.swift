//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 30.08.2023.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description : String?
    let location: String?
    let image: URL
}
