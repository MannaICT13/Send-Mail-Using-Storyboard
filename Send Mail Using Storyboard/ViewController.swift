//
//  ViewController.swift
//  Send Mail Using Storyboard
//
//  Created by Md Khaled Hasan Manna on 11/3/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController,MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
    }

    @IBAction func sendBtnAction(_ sender: UIButton) {
        
        let mailController = MFMailComposeViewController()
        mailController.mailComposeDelegate = self
        mailController.setToRecipients(<#T##toRecipients: [String]?##[String]?#>)
        mailController.setCcRecipients(<#T##ccRecipients: [String]?##[String]?#>)
        mailController.setSubject(<#T##subject: String##String#>)
        mailController.setMessageBody(<#T##body: String##String#>, isHTML: <#T##Bool#>)
        
    }
    
    
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
    }
    
}

