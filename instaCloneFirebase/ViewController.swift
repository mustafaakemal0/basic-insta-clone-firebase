//
//  ViewController.swift
//  instaCloneFirebase
//
//  Created by Mustafa Kemal Özen on 19.05.2023.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signInClicked(_ sender: Any) {
        
        if emailText.text != "" && PasswordText.text != "" {
            Auth.auth().signIn(withEmail: emailText.text!, password: PasswordText.text!) { authdata, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                } else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
                
                
            }
            
        }
    }
        @IBAction func signUpClicked(_ sender: Any) {
            
            if emailText.text != "" && PasswordText.text != "" {
                Auth.auth().createUser(withEmail: emailText.text!, password: PasswordText.text!) { authdata, error in
                    
                    if error != nil {
                        self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                    } else {
                        self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                    }
                }
            } else {
                makeAlert(titleInput: "Error!", messageInput: "Username/Password?")
                
            }
        }
        
        func makeAlert(titleInput:String, messageInput: String){
            let alert = UIAlertController(title:titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }

