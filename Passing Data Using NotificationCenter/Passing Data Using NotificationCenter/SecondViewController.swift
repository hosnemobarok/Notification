//
//  SecondViewController.swift
//  Passing Data Using NotificationCenter
//
//  Created by Md Hosne Mobarok on 30/3/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func facebookButtonAction(_ sender: UIButton) {
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    
    
    @IBAction func twitterButtonAction(_ sender: UIButton) {
        NotificationCenter.default.post(name: .twitter, object: nil)
    }
    
}

