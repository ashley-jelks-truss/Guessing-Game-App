//
//  ViewController.swift
//  Guessing-Game
//
//  Created by Ashley Jelks on 11/30/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userGuess: UITextField!
    
    @IBOutlet var randomlyGeneratedNumberLabel: UILabel!
    
    @IBAction func submitUserGuess(sender: AnyObject) {
    
        let randomlyGeneratedNumber = String(arc4random_uniform(11))
        
        print(randomlyGeneratedNumber)
        
        if randomlyGeneratedNumber == userGuess.text {
            
            randomlyGeneratedNumberLabel.text = "Your Guess Was Correct!!"
            
        }
        
        else {
        
        randomlyGeneratedNumberLabel.text = "Sorry, The Answer Was " + randomlyGeneratedNumber + " !"
        }
        
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

