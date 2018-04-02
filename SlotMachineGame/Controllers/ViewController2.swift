//
//  ViewController2.swift
//  SlotMachineGame
//
//  Created by Fisicon on 10/23/17.
//  Copyright © 2017 NSFTF. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    
    // Declaring the 5 numbers outlets
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number3: UILabel!
    @IBOutlet weak var number4: UILabel!
    @IBOutlet weak var number5: UILabel!
    
    // Declaring the scores outlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    
    // Declaring variables
    var score = 100;
    var win: Bool = false
    
    // Function for the button
    @IBAction func Spin(_ sender: UIButton) {
        
        //button
        sender.animate()
        
        // Displays the numbers
        getDigit()
        
        // Display their colors
        getColor()
        
        // Display the score
        getScore()
        
        // Disables the spin button
        if (score < 2){
            sender.isEnabled = false
        }
    }
    
    // This method returns the current color.
    func getColor() {
        number1.textColor = (Digit.pickColor())
        number2.textColor = (Digit.pickColor())
        number3.textColor = (Digit.pickColor())
        number4.textColor = (Digit.pickColor())
        number5.textColor = (Digit.pickColor())
    }
    
    //This method returns the current digit.
    func getDigit() {
        number1.text = String(Digit.pickDigit())
        number2.text = String(Digit.pickDigit())
        number3.text = String(Digit.pickDigit())
        number4.text = String(Digit.pickDigit())
        number5.text = String(Digit.pickDigit())
    }
    
    //Reset Button
    @IBAction func reset(_ sender: Any) {
        
        let numbers = [number1, number2, number3, number4, number5]
        
        // resets the numbers back to 0
        for num1 in numbers {
            num1?.text = String(0)
        }
        
        // resets the score to 100
        score = 100;
        scoreLabel2.text = String(score)
        
        // resets the colors back to black
        for num2 in numbers {
            num2?.textColor = UIColor.black
        }
    }
    
    // The score getter function
    func getScore() {
        
        // All digits are equal
        // Earns 250 points
        if  number1.text == number2.text &&
            number2.text == number3.text &&
            number3.text == number4.text &&
            number4.text == number5.text {
            score += 250
            win = true
        }
        
        // All colors are equal
        // Earns 127 point
        if  number1.textColor == number2.textColor &&
            number2.textColor == number3.textColor &&
            number3.textColor == number4.textColor &&
            number4.textColor == number5.textColor {
            score += 125;
            win = true
        }
        
        // All digits and colors are equal
        // Earns 500
        if number1.text == number2.text &&
            number2.text == number3.text &&
            number3.text == number4.text &&
            number4.text == number5.text &&
            number1.textColor == number2.textColor &&
            number2.textColor == number3.textColor &&
            number3.textColor == number4.textColor &&
            number4.textColor == number5.textColor{
            score += 500
            win = true
        }
        
        if (win == false) {
            // Takes 2 point off each spin
            score -= 2
            scoreLabel2.text = String(score)
        }
        
        win = false;
    }
}
