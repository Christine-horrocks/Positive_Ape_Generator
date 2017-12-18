//
//  ViewController.swift
//  Positive_Ape_Generator
//
//  Created by Christine Horrocks on 01/12/2017.
//  Copyright © 2017 Christine Horrocks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var happyApe: UIImageView!
    
    @IBOutlet weak var inspirationalMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func shuffle(_ sender: Any) {
        
        let randomApe = arc4random_uniform(21)
        
        let randomMessages = ["You can do it!", "Just stand up!", "I believe in you", "Reach around", "Go on", "That's it!", "Trust your feet", "Ooh, that is sketchy", "Flexy!", "Toes to tits", "Yes, that's it", "Chanel your inner ape", "Go Tom!", "You're the best", "Whoop Whoop", "Allez!", "Rock over", "Just a bit further", "Grab the crack", "Pinch it!", "Nice guns ;-)"]
        
        let randomMessage = Int(arc4random_uniform(UInt32(randomMessages.count)))
        
        inspirationalMessage.text = randomMessages[randomMessage]
        
        happyApe.image = UIImage(named: "ape\(randomApe)")
    }
    

}

