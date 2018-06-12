//
//  Helpers.swift
//  Extensions-Fun
//
//  Created by Sean Casaus on 6/11/18.
//  Copyright © 2018 Sean Casaus. All rights reserved.
//

import UIKit

//generates any amount of random numbers passed into it
func generateRandomNumbers(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    //_ allows you to not use value, but iterate though for loop
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
