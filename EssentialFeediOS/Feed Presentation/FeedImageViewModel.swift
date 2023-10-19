//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Eyüp Mert on 19.10.2023.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
    
}
