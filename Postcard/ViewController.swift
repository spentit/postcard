//
//  ViewController.swift
//  Postcard
//
//  Created by Terence Billingsley on 2014-09-21.
//  Copyright (c) 2014 Time To Information. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   @IBAction func sendMailButtonPressed(sender: UIButton) {
        //code will evaluate when we press the button
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        nameLabel.text = enterNameTextField.text
        enterAMessageTextField.text = ""
        enterNameTextField.text = ""
        
        //now call a function to hide the keyboard once we've selected the button
        
        enterAMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        //now we'll set the message content to red
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.brownColor()
        
}
}

