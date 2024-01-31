//
//  SettingsViewController.swift
//  instaCloneFirebase
//
//  Created by Mustafa Kemal Özen on 21.05.2023.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        }catch {
            print("Error!")
        }
    }
    
    

}
