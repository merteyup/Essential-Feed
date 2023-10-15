//
//  FeedViewControllerTests.swift
//  EssentialFeediOSTests
//
//  Created by Eyüp Mert on 15.10.2023.
//

import XCTest

final class FeedViewController {
    init(loader: FeedViewControllerTests.LoaderSpy) {
        
    }
    
}

final class FeedViewControllerTests: XCTestCase {
    
    func test_init_doesNotLoadFeed() {
        let loader = LoaderSpy()
        _ = FeedViewController(loader: loader)
        
        XCTAssertEqual(loader.loadCallCount, 0)
    }
    
    class LoaderSpy {
        private (set) var loadCallCount = 0
    }
    
}
