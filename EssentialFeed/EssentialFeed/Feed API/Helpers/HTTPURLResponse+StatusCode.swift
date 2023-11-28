//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Eyüp Mert on 19.11.2023.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
