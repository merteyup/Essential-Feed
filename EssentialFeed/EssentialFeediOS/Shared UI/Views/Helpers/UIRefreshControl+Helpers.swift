//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Eyüp Mert on 30.10.2023.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
