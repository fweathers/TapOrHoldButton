//
//  ViewController.swift
//  TapOrHold
//
//  Created by Felicia Weathers on 4/17/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tapOrHold: UIButton!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var counterNumbers : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        counterLabel.text = "0"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func longPressAction() {
        print("did long press")
    }
    
    @IBAction func tapOrHoldButton(sender: AnyObject) {
        
        let lpg = UILongPressGestureRecognizer(target: self, action: "longPressAction")
        lpg.minimumPressDuration = 2
        
        self.counterNumbers++
        self.counterLabel.text = String(self.counterNumbers)
        tapOrHold.addGestureRecognizer(lpg)
        
        
        
        
        
        
    }
    
    @IBAction func resetButton(sender: UIBarButtonItem) {
        
        self.counterNumbers = 0
        self.counterLabel.text = String(self.counterNumbers)
    }
}

