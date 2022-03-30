//
//  ViewController.swift
//  Passing Data Using NotificationCenter
//
//  Created by Md Hosne Mobarok on 30/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification: )), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(twitter: )), name: .twitter, object: nil)
    }

    @objc func facebook(notification: Notification){
        nameLabel.text = "Facebook"
        imageView.image = UIImage(named: "facebook")
    }
    
    @objc func twitter(twitter: Notification){
        nameLabel.text = "Twitter"
        imageView.image = UIImage(named: "twitter")
    }

    @IBAction func chooseSocialBtnAction(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

extension Notification.Name {
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
}
