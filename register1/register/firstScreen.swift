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
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.cornerRadius = 20
        signInButton.layer.masksToBounds = true
        
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsignUpScreen") as? signUpScreen
        vc?.info = info
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func signIn(_ sender: UIButton) {
        if(usernameField.text!.isEmpty || passwordField.text!.isEmpty) {
            print("incorrect input")
            return
        } else {
            if(info.isCorrect(usernameField.text!, passwordField.text!)) {
                let vc = storyboard?.instantiateViewController(withIdentifier: "xxxViewController") as? ViewController
                navigationController?.pushViewController(vc!, animated: true)
            } else {
                
            }
        }
    }
    
}

extension firstScreen: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField.tag == 0) {
            self.passwordField.becomeFirstResponder()
        } else {
            signIn(signInButton)
        }
        return true
    }
}
