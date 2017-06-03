//
//  ViewController.swift
//  2017
//
//  Created by UG Lemondo on 6/2/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var move: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.move.layer.cornerRadius = self.move.frame.size.width/2.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func mooove(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        
        let calculated = self.view.layer.frame.width - self.move.frame.size.width-20
        let calculated1 = self.view.layer.frame.height - self.move.frame.size.height-20
        let calculated2 = self.move.frame.origin.x
        let calculated3 = self.move.frame.origin.y
        
        
        UIView.animate(withDuration: 0.3, animations: {
            self.move.frame.origin.x = calculated
        }) { (_) in
            UIView.animate(withDuration: 0.3, animations: {
                self.move.frame.origin.y = calculated1
            }, completion: { (_) in
                UIView.animate(withDuration: 0.3, animations: {
                    self.move.frame.origin.x = calculated2
                }, completion: { (_) in
                    UIView.animate(withDuration: 0.3, animations: {
                        self.move.frame.origin.y = calculated3
                    }, completion: { (_) in
                        
                        sender.isUserInteractionEnabled = true
                    })
                })
            })
            
        }
    }

}

