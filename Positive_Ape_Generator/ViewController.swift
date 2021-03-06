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
    
    let randomMessages = ["You can do it!", "Just stand up!", "I believe in you", "Reach around", "Go on", "That's it!", "Trust your feet", "Ooh, that is sketchy", "Flexy!", "Toes to tits", "Yes, that's it", "Chanel your inner ape", "Go Tom!", "You're the best", "Whoop Whoop", "Allez!", "Rock over", "Just a bit further....", "Grab the crack", "Pinch it!", "Nice guns ;-)", "OOOOOooooooooh", "Wow!", "Reach around", "Nearly there!", "You can do it!", "Just stand up", "Climb like a gibbon", "Be the rock", "Don't face plant", "Come on", "Just push harder", "You need more gusto", "Breathe!" ]
    
    let randomGifs = ["giphy", "gib_bridge", "gib_cat", "gib_hug", "chimp", "happy_orang", "hamock", "sloth", "baby_orang", "panda", "lizzard", "gib_walk", "gib_shake", "chimp_shove", "gor_clap", "chimp_butt", "chimp_fall"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func shuffle(_ sender: Any) {
        
        let randomMessage = Int(arc4random_uniform(UInt32(randomMessages.count)))
        inspirationalMessage.text = randomMessages[randomMessage]
        
        let randomApe = arc4random_uniform(21)
        let image = UIImage(named: "ape\(randomApe)")
        
        let randomGif = Int(arc4random_uniform(UInt32(randomGifs.count)))
        let gif = UIImage.gif(name: randomGifs[randomGif])
    
        let media = [gif, image]
        let randomMedia = Int(arc4random_uniform(UInt32(media.count)))
        let medium = media[randomMedia]
        
        happyApe.image = medium
        
    }
    

}

