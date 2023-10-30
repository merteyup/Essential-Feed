//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Eyüp Mert on 30.10.2023.
//


struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
