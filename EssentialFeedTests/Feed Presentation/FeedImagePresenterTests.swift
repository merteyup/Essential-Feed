//
//  FeedImagePresenter.swift
//  EssentialFeedTests
//
//  Created by Eyüp Mert on 9.11.2023.
//

import Foundation
import XCTest

class FeedImagePresenterTests: XCTestCase {
    
    class FeedImagePresenter {
        init(view: Any) {
            
        }
    }
    
    func test_init_doesNotSendMessagesToView () {
        
        let (_, view) = makeSUT()
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
        
    }
    
    
    // MARK: - Helpers
    
    private func makeSUT(file: StaticString = #file , line: UInt = #line) -> (sut: FeedImagePresenter, view: ViewSpy) {
        
        let view = ViewSpy()
        let sut = FeedImagePresenter(view: view)
        trackForMemoryLeaks(view, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, view)
        
    }
    
    private class ViewSpy {
        
        let messages = [Any]()
        
    }
    
}
