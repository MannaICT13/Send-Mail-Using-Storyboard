//
//  ViewController.swift
//  Send Mail Using Storyboard
//
//  Created by Md Khaled Hasan Manna on 11/3/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    @IBOutlet weak var toTextField: UITextField!
    
    @IBOutlet weak var ccTextField: UITextField!
    
    @IBOutlet weak var subjectTextField: UITextField!
    
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendAction(_ sender: Any) {
         
        composeMail()
        
        
    }

    func composeMail(){
        
        
              guard MFMailComposeViewController.canSendMail() else {
                  return
              }
              
              let mailController = MFMailComposeViewController()
              mailController.mailComposeDelegate = self
              mailController.setToRecipients([toTextField.text!])
              mailController.setCcRecipients([ccTextField.text!])
              mailController.setSubject(subjectTextField.text!)
              mailController.setMessageBody(bodyTextView.text, isHTML: false)
              self.present(mailController, animated: true, completion: nil)
    }
    
    
    
   
    
}
extension ViewController : MFMailComposeViewControllerDelegate{
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error{
            controller.dismiss(animated: true, completion: nil)
        }
        
        
        switch result {
            
        case .sent:
            print("Sent")
            
        case .failed:
            print("Faild")
        case .cancelled:
            print("canceled")
        case .saved:
            print("Saved")
            
        default:
            fatalError()
        }
        
    }
}
