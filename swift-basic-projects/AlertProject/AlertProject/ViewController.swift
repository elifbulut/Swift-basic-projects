//
//  ViewController.swift
//  AlertProject
//
//  Created by Elıf on 9.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked
            print("buttonclicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated : true, completion: nil)
 */
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found")
        }else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        }else if passwordText.text != passwordText2.text{
            makeAlert(titleInput: "Error", messageInput: "Password do not match")
        }else {
            makeAlert(titleInput: "Success", messageInput: "User ok")
        }

    }
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message:  messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true , completion: nil)
    }
    
    
}
