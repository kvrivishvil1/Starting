//
//  signUpScreen.swift
//  register
//
//  Created by UG Lemondo on 5/30/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class signUpScreen: UIViewController {
    @IBAction func home(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
