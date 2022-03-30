//
//  ViewController.swift
//  NotificationExample
//
//  Created by Md Hosne Mobarok on 30/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var targetNumberLabel: UILabel!
    @IBOutlet weak var countNumberLabel: UILabel!
    
    var theCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countNumberLabel.text = String(theCount)
        targetNumberLabel.text = ""
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateCounterDisplay), name: .countDidChange, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(targetNumberDisplay), name: .targetNumber, object: nil)
    }
    
    @objc func updateCounterDisplay() {
        countNumberLabel.text = String(theCount)
    }
    
    @objc func targetNumberDisplay() {
        targetNumberLabel.text = "Value is 5!"
    }
    
    @IBAction func incrementCountBtnAction(_ sender: UIButton) {
        theCount += 1
        
        if theCount == 5 {
            NotificationCenter.default.post(name: .targetNumber, object: nil)
        }
        NotificationCenter.default.post(name: .countDidChange, object: nil)
    }
    
}

