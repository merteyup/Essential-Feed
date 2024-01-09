//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Eyüp Mert on 21.10.2023.
//

import XCTest
@testable import EssentialFeed

final class FeedLocalizationTests: XCTestCase {

    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
