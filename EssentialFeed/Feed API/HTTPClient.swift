//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 8.08.2023.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result <(Data, HTTPURLResponse), Error>
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func get(from url: URL, completion: @escaping (Result) -> Void)
}
