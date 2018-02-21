//
//  ViewController1.swift
//  SlotMachineGame
//
//  Created by Fisicon on 10/23/17.
//  Copyright © 2017 NSFTF. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    // Declaring the 3 numbers
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number3: UILabel!
    
    // Declaring the scores outlets
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    
    // Declaring variables
    var score = 100;
    var win: Bool = false
    
    // Declaring a button outlet
    @IBOutlet weak var Spin: UIButton!
    
    // An function for the button
    @IBAction func Spin(_ sender: UIButton) {
        
        //button
        sender.animate()
        
        // Displays the numbers
        getDigit()
        
        // Display their colors
        getColor()
        
        // Displays the score
        getScore()
        
        // Disables the spin button
        if (score < 2){
            sender.isEnabled = false
        }
    }
    
    
    //Reset Button
    @IBAction func reset(_ sender: Any) {
        
        let numbers = [number1, number2, number3]
        
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
    
    // This method returns the current color.
    func getColor() {
        number1.textColor = (Digit.pickColor())
        number2.textColor = (Digit.pickColor())
        number3.textColor = (Digit.pickColor())
    }
    
    //This method returns the current digit.
    func getDigit() {
        number1.text = String(Digit.pickDigit())
        number2.text = String(Digit.pickDigit())
        number3.text = String(Digit.pickDigit())
    }
    
    // Function that gets the score
    func getScore() {
        
        // All digits are equal
        // Earns 150 points
        if  number1.text == number2.text &&
            number2.text == number3.text {
            score += 150
            win = true
        }
        
        // All colors are equal
        // Earns 75 points
        if  number1.textColor == number2.textColor &&
            number2.textColor == number3.textColor {
            score += 75;
            win = true
        }
        
        // all digits and colors are equal
        // Earns 300 points
        if number1.text == number2.text &&
            number2.text == number3.text &&
            number1.textColor == number2.textColor &&
            number2.textColor == number3.textColor{
            score += 300
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
