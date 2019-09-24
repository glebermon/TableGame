//
//  CustomSlider.swift
//  TableGame
//
//  Created by Глеб on 04/09/2019.
//  Copyright © 2019 Глеб. All rights reserved.
//

import UIKit

class CustomSlider: UISlider {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        
        let point = CGPoint(x: bounds.minX, y: bounds.midY)
        
        return CGRect(origin: point, size: CGSize(width: bounds.width, height: 20))
        
    }

}
