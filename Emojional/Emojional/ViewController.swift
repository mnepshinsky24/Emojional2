//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 6/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["☺️" : "Happy","😞": "Sad"]
    let customMessages = ["Happy" : ["You are awesome!", "So glad everything is going well", "Keep it up!" ], "Sad" : ["It's going to be okay", "It's normal to feel sad once in a while. Things will change again and you will be happy again!", "It's going to be okay!"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton){
    // We want to create another constant that will store information about what the user just tapped
        
        let selectedEmotion = sender.titleLabel?.text
        
//        showMessage.color() = UIColor.black
// No color codes - stored in UI Color black 
        
        
        
        let emotionArray = customMessages[emojis[selectedEmotion!]!]
        
        let random = Int.random(in: 0..<emotionArray!.count)
        
        let emojiMessage = emotionArray?[random]
        
        
        //When the user clicks the Emoji button
        // Messages pop up that are encouraging, like, you got this! You can do this! Keep going! We are so proud of you!
        let alertController = UIAlertController(title: "title", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
       //allows the notification to pop up
        alertController.addAction(UIAlertAction(title:"Okay!", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
        
    }
    
//    @IBAction func showMessage (sender: UIButton){
//        //When the user will click the sad emoji this time, a different message will pop up
//        let alertController = UIAlertController(title: "You're sad :(!", message: "Just know that it can only go up from here! Your feelings are valid and it's normal to feel sad sometimes. That just makes us appreciate the good times even more. Rest and do something nice for yourself", preferredStyle: UIAlertController.Style.alert)
//
//        alertController.addAction(UIAlertAction (title: "Okay!", style: UIAlertAction.Style.default, handler: nil))
//
//
//        present(alertController, animated: true, completion: nil)
//
//
//    }
//
//
//
//}
}
