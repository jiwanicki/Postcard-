//
//  ViewController.swift
//  Postcard
//
//  Created by Joseph Iwanicki on 10/4/14.
//  Copyright (c) 2014 JosephIwanicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
         // unhides label
        messageLabel.text = enterMessageTextField.text
        //  updates label text
        messageLabel.textColor = UIColor.redColor()
        // changes message label text color
        
        enterMessageTextField.text = ""
        // updating the enter message label text
        enterMessageTextField.resignFirstResponder()
        //  enterMesaageTextField displays resignFirstResponder hides keyboard
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        // changes send mail to mail sent text
        // adding comment here to test commits
        
    }

}

