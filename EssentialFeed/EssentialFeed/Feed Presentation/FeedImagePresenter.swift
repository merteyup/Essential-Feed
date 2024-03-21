//
//  FeedImagePresenter.swift
//  EssentialFeedTests
//
//  Created by Eyüp Mert on 9.11.2023.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(description: image.description,
                           location: image.location)
    }
}
