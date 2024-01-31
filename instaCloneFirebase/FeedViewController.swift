//
//  FeedViewController.swift
//  instaCloneFirebase
//
//  Created by Mustafa Kemal Özen on 21.05.2023.
//

import UIKit

class FeedViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.userEmailLabel.text = "test"
        cell.userImageView.image = UIImage(named: "foto")
        cell.commentLabel.text = "comment"
        cell.likeLabel.text = "0"
        return cell
    }

}
