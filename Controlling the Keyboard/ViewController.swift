//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Jason Shultz on 10/1/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var textLable: UILabel!
    
    @IBAction func textButton(sender: AnyObject) {
        
        let sometext:String? = textField.text
        
        textLable.text = sometext
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textfield: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

