//
//  ViewController.swift
//  Extensions-Fun
//
//  Created by Sean Casaus on 6/11/18.
//  Copyright © 2018 Sean Casaus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorizeBtn: UIButton!
    
    @IBOutlet weak var wiggleBtn: UIButton!
    
    @IBOutlet weak var dimBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //event listener colorized button
    @IBAction func colorizedBtnAction(_ sender: Any) {
        colorizeBtn.colorize()
    }
    //event listener wiggle button
    @IBAction func wiggleBtnAction(_ sender: Any) {
        wiggleBtn.wiggle()
        
    }
    //event listener dim button
    @IBAction func dimBtnAction(_ sender: Any) {
        dimBtn.dim()
    }
    
}

