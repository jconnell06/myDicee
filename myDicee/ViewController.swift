//
//  ViewController.swift
//  AutoLayout-iOS13
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  Date: 19-APR-2020
//  Updated By: JoEllen Connell
//  Added some program control to "animate" the dice roll.

import UIKit

extension UIImageView {
    
    func animate(_ images: [UIImage]) {
         self.animationImages =  images
        self.animationDuration = 0.6
         self.animationRepeatCount = 3
         self.image = images.last
         self.startAnimating()
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.animate(diceArray.shuffled())
        diceImageView2.animate(diceArray.shuffled())
        
    }
    
}

