//
//  incorrectSignIn.swift
//  register
//
//  Created by UG Lemondo on 5/30/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class incorrectSignIn: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var lowerLabel: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!


    var top:String!
    var lower:String!
    var info:Data!
    
    override func viewDidLoad() {
        topLabel.text = top
        lowerLabel.text = lower
    }
    @IBAction func signIn(_ sender: UIButton) {
        if(usernameField.text!.isEmpty || passwordField.text!.isEmpty) {
            print("incorrect input")
            return
        }
        
        if(info.isCorrect(usernameField.text!, passwordField.text!)) {
            let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsuccessfullSignup") as? successfullSignup
            vc?.lowerText = usernameField.text
            navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsignUpScreen") as? signUpScreen
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func home(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
