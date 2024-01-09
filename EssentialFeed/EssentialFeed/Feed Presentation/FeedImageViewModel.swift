//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 9.11.2023.
//

import Foundation

public struct FeedImageViewModel{
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}
