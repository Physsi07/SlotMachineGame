//
//  Digit.swift
//  SlotMachineGame
//
//  Created by Fisicon on 10/23/17.
//  Copyright © 2017 NSFTF. All rights reserved.
//

import UIKit

class Digit: UIViewController {
    
    // This method randomly selects a color and returns it.
    static func pickColor() -> UIColor{
        
        let number = arc4random_uniform(4)
        
        if number == 1 {
            // Generates Red
            let red = CGFloat(256);
            return UIColor(red: red, green: 0.0, blue: 0.0, alpha: 1.0)
        }
        else if number == 2 {
            // Generates Green
            let green = CGFloat(256);
            return UIColor(red: 0.0, green: green, blue: 0.0, alpha: 1.0)
        }
            
        else if number == 3 {
            // Generates Blue
            let blue = CGFloat(256);
            return UIColor(red: 0.0, green: 0.0, blue: blue, alpha: 1.0)
        }
            
        else {
            // Generates Purple
            let red = CGFloat(128)
            let green = CGFloat(0);
            let blue = CGFloat(128);
            
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
    
    // This method randomly selects a digit and returns it.
    static func pickDigit() -> UInt32 {
        let number = arc4random_uniform(10)
        return number
    }
}
