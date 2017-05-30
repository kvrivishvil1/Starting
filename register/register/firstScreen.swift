//
//  firstScreen.swift
//  register
//
//  Created by UG Lemondo on 5/30/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class firstScreen: UIViewController {
    
    
    @IBAction func signUp(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsignUpScreen") as? signUpScreen
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    @IBAction func signIn(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxincorrectSignIn") as? incorrectSignIn
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}
