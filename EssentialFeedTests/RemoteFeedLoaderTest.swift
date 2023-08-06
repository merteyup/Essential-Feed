//
//  RemoteFeedLoaderTest.swift
//  EssentialFeedTests
//
//  Created by Eyüp Mert on 6.08.2023.
//

import Foundation
import XCTest


class RemoteFeedLoader {
    
    let client : HTTPClient
     
    init(client: HTTPClient) {
        self.client = client
    }
    
    func load() {
        client.get(from: URL(string: "https://a-url.com")!)
    }
    
}

protocol HTTPClient {
    func get(from url: URL)
}

class HTTPClientSpy: HTTPClient {
    
    var requestedURL : URL?

    func get(from url: URL ) {
        requestedURL = url
    }
}


class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        
        let client = HTTPClientSpy()
        _ = RemoteFeedLoader(client: client)
            
        XCTAssertNil(client.requestedURL)
        
    }
    
    func test_load_requestedDataFromURL() {
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(client: client)
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
    
}



