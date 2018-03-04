//
//  ViewController.swift
//  L1.Concentration
//
//  Created by Min Zheng on 2018-02-24.
//  Copyright © 2018 Standford University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "FlipCount=\(flipCount)"
        }
    }
    
    var emojiChoices = ["🐶","🐰","🐻","🐦","👜","🎩","🎒","🕶"]
    
    @IBOutlet var cardButton: [UIButton]!
    
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButton.index(of: sender){
            print("\(emojiChoices[cardNumber])")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)

        }else{
            print("Chosen card was not in cardButtons")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else{
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

