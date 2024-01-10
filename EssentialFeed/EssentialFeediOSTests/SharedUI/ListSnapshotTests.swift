//
//  ListSnapshotTests.swift
//  EssentialFeediOSTests
//
//  Created by Eyüp Mert on 10.01.2024.
//

import XCTest
import EssentialFeed
import EssentialFeediOS

class ListSnapshotTests: XCTestCase {
    
    func test_emptyFeed() {
        let sut = makeSUT()
        
        sut.display(emptyFeed())
        
        assert(snapshot: sut.snapshot(for: .iPhone15Pro(style: .light)), named: "EMPTY_FEED_light")
        record(snapshot: sut.snapshot(for: .iPhone15Pro(style: .dark)), named: "EMPTY_FEED_dark")
    }
    
    // MARK: - Helpers
    private func makeSUT() -> ListViewController {
        let bundle = Bundle(for: ListViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController() as! ListViewController
        controller.loadViewIfNeeded()
        controller.tableView.showsVerticalScrollIndicator = false
        controller.tableView.showsHorizontalScrollIndicator = false
        return controller
    }
    
    private func emptyFeed() -> [FeedImageCellController] {
        return []
    }
    
}
