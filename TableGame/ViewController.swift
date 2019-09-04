//
//  ViewController.swift
//  TableGame
//
//  Created by Глеб on 04/09/2019.
//  Copyright © 2019 Глеб. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var firstRandomIndex = 0
    var secondRandomIndex = 0
    @IBOutlet weak var firstDiceImage: UIImageView!
    @IBOutlet weak var secondDiceImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func rollPressed(_ sender: UIButton) {
        
        updateImage()
        
    }
    
    func updateImage() {
        
        firstRandomIndex = Int(arc4random_uniform(6))
        secondRandomIndex = Int(arc4random_uniform(6))
        
        firstDiceImage.image = UIImage(named: diceArray[firstRandomIndex])
        secondDiceImage.image = UIImage(named: diceArray[secondRandomIndex])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateImage()
        }
    }


}

