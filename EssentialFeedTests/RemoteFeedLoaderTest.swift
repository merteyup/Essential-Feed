//
//  RemoteFeedLoaderTest.swift
//  EssentialFeedTests
//
//  Created by Eyüp Mert on 6.08.2023.
//

import Foundation
import XCTest


class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL : URL?
}


class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        
        let client = HTTPClient()
        _ = RemoteFeedLoader()
            
        XCTAssertNil(client.requestedURL)
        
    }
}



