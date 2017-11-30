//
//  ViewController.swift
//  ZeroToAHundred
//
//  Created by Martin Gábor on 30.11.17.
//  Copyright © 2017 Martin Gábor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameLabel.text = textField.text
        textField.text = ""
        textField.placeholder = "Set name"
        }

    
    //MARK: Actions

    @IBAction func setDefaultName(_ sender: UIButton) {
        nameLabel.text = "Martin Gabor"
    }


}

