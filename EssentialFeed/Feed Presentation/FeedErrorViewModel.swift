//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 31.10.2023.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
