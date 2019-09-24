//
//  ViewController.swift
//  TableGame
//
//  Created by Глеб on 04/09/2019.
//  Copyright © 2019 Глеб. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var gameName = ""
    
    var diceArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var viewArray : [UIImageView] = [UIImageView]()
    
    var firstRandomIndex = 0
    var secondRandomIndex = 0
    
    
    
    @IBOutlet weak var firstDiceImage: UIImageView!
    
    @IBOutlet weak var secondDiceImage: UIImageView!
    
    @IBOutlet weak var someLabel: UILabel!
    
    @IBOutlet weak var thirdDiceImage: UIImageView!
    
    @IBOutlet weak var fourthDiceImage: UIImageView!
    
    @IBOutlet weak var fifthDiceImage: UIImageView!
    
    @IBOutlet weak var sixthDiceImage: UIImageView!
    
    
    
    @IBOutlet weak var appSlider: CustomSlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewArray.append(firstDiceImage)
        viewArray.append(secondDiceImage)
        viewArray.append(thirdDiceImage)
        viewArray.append(fourthDiceImage)
        viewArray.append(fifthDiceImage)
        viewArray.append(sixthDiceImage)
        
        
        title = gameName
        appSlider.minimumTrackTintColor = UIColor(named: "sliderCol1")
        appSlider.maximumTrackTintColor = UIColor(named: "sliderCol2")
        
    }
    @IBAction func rollPressed(_ sender: UIButton) {
        
        updateImage()
        
    }
    
    func updateImage() {
        
        /*firstRandomIndex = Int(arc4random_uniform(6))
        secondRandomIndex = Int(arc4random_uniform(6))
        
        firstDiceImage.image = UIImage(named: diceArray[firstRandomIndex])
        secondDiceImage.image = UIImage(named: diceArray[secondRandomIndex])*/
        
        for i in 0..<(viewArray.count) {
            firstRandomIndex = Int(arc4random_uniform(6))
            viewArray[i].image = UIImage(named: diceArray[firstRandomIndex]) 
        }

        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateImage()
        }
    }
    
    @IBAction func sliderValueChnged(_ sender: Any) {
        
        someLabel.text = "Текущие очки воли: \(Int(appSlider.value))"
        
        if appSlider.value > 10 {
            viewArray[4].isHidden = false
        } else {
            viewArray[4].isHidden = true
        }
        
    }
    

}

