//
//  FeedImageCell.swift
//  EssentialFeediOS
//
//  Created by Eyüp Mert on 16.10.2023.
//

import UIKit

public final class FeedImageCell: UITableViewCell {
    
    @IBOutlet private(set) public var locationContainer : UIView!
    @IBOutlet private(set) public var locationLabel : UILabel!
    @IBOutlet private(set) public var descriptionLabel : UILabel!
    @IBOutlet private(set) public var feedImageContainer : UIView!
    @IBOutlet private(set) public var feedImageRetryButton : UIButton!
    @IBOutlet private(set) public var feedImageView : UIImageView!
    
    var onRetry: (() -> Void)?
    
    @IBAction private func retryButtonTapped() {
        onRetry?()
    }
}
