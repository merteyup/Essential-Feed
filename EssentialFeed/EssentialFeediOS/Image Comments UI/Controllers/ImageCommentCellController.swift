//
//  ImageCommentsCellController.swift
//  EssentialFeediOS
//
//  Created by Eyüp Mert on 11.01.2024.
//

import UIKit
import EssentialFeed

public class ImageCommentsCellController: CellController {
    private let model: ImageCommentViewModel
    
    public init(model: ImageCommentViewModel) {
        self.model = model
    }
    
    public func view(in tableView: UITableView) -> UITableViewCell {
        UITableViewCell()
    }
    
    public func preload() {
        
    }
    
    public func cancelLoad() {
        
    }
    
    
}
