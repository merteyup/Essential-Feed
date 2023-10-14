//
//  FeedViewController.swift
//  Prototype
//
//  Created by Eyüp Mert on 14.10.2023.
//

import UIKit

final class FeedViewController: UITableViewController {

  
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return tableView.dequeueReusableCell(withIdentifier: "FeedImageCell")!
    }


}
