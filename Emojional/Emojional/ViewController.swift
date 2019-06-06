//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton){
        //When the user clicks the Emoji button
        // Messages pop up that are encouraging, like, you got this! You can do this! Keep going! We are so proud of you!
        let alertController = UIAlertController(title: "You're happy", message: "I'm so glad you're happy! Have a great day!", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title:"Okay!", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    

    }



