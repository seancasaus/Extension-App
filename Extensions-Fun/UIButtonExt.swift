//
//  UIButtonExt.swift
//  Extensions-Fun
//
//  Created by Sean Casaus on 6/11/18.
//  Copyright © 2018 Sean Casaus. All rights reserved.
//

import UIKit

//extends to UIButtons
extension UIButton {
    func wiggle() {
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05 //set short time
        wiggleAnim.repeatCount = 5 //set number of times
        wiggleAnim.autoreverses = true //automatically reverses anim
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 5.0, y: self.center.y) //takes center of button and moves it 4 places to left
        wiggleAnim.toValue = CGPoint(x: self.center.x + 5.0, y: self.center.y) //takes center of button and moves it 4 places to right
        layer.add(wiggleAnim, forKey: "position")
    }
    
    func dim() {
        //dims
        UIView.animate(withDuration: 0.5, animations: {
            self.alpha = 0.5
        }) { (finished) in
            //reverses dim
            UIView.animate(withDuration: 0.5, animations: {
                self.alpha = 1.0
            })
        }
    }
    
    func colorize() {
        let randomNumberArray = generateRandomNumbers(quantity: 3) //array of random numbers
        //uses random numbers to generate a random color
        let randomColor = UIColor(red: randomNumberArray[0]/255, green: randomNumberArray[1]/255, blue: randomNumberArray[2]/255, alpha: 1.0)
        //changes the color of the button
        UIView.animate(withDuration: 0.5) {
            self.backgroundColor = randomColor
        }
    }
}
