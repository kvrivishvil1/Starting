//
//  firstScreen.swift
//  register
//
//  Created by UG Lemondo on 5/30/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class firstScreen: UIViewController {
    
    var info = Data()
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func signUp(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsignUpScreen") as? signUpScreen
        vc?.info = info
        navigationController?.pushViewController(vc!, animated: true)
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
        } else {
            let vc = storyboard?.instantiateViewController(withIdentifier: "xxxincorrectSignIn") as? incorrectSignIn
            vc?.top = "Incorrect"
            vc?.lower = "Username or Password"
            navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
}
