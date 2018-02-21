//
//  UIButton.swift
//  SlotMachineGame
//
//  Created by Fisicon on 10/24/17.
//  Copyright © 2017 NSFTF. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func animate () {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
        
    }
}
