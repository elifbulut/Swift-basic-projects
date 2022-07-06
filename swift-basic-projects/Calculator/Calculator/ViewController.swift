//
//  ViewController.swift
//  Calculator
//
//  Created by Elıf on 29.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var first: UITextField!
    
    
    @IBOutlet weak var second: UITextField!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func top(_ sender: Any) {
        
        let firstNumber = Int(first.text!)
        let secondNumber = Int(second.text!)
        
        let sonuc = first + second
        
        label.text = String(sonuc)
    }
    
    @IBAction func cik(_ sender: Any) {
    }
    
    @IBAction func carp(_ sender: Any) {
    }
    
    
    
}

