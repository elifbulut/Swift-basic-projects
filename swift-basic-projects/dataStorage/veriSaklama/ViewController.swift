//
//  ViewController.swift
//  veriSaklama
//
//  Created by Elıf on 1.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //app acilinca ilk cagrilan fonk
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
         //casting as? gibi kaydet vs as! kesinkes
        if let newName = storedName as? String{
            nameLabel.text = newName
        }
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = newBirthday
        }
        
    }
    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        //UserDefaults.standard.synchronize() yeni verselerde kullanmiyoruz.
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        // "" vs nil
        if storedName is String{
            UserDefaults.standard.removeObject(forKey: "name")
        }
        if storedBirthday is String{
            UserDefaults.standard.removeObject(forKey: "birthday")
        }
    }
    

}
