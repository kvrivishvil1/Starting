//
//  successfullSignup.swift
//  register
//
//  Created by UG Lemondo on 5/31/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class successfullSignup: UIViewController {

    @IBOutlet weak var top: UILabel!
    @IBOutlet weak var lower: UILabel!
    
    var lowerText:String!
    
    @IBAction func home(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        top.text = "Welcome"
        lower.text = lowerText
    }
}
