//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Eyüp Mert on 1.09.2023.
//

import Foundation


func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
