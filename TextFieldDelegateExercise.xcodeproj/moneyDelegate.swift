//
//  moneyDelegate.swift
//  TextFieldDelegateExercise
//
//  Created by Moritz Gort on 06/09/15.
//  Copyright (c) 2015 Gabriele Gort. All rights reserved.
//

import Foundation
import UIKit

class moneyDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var newText = textField.text as NSString
        
        
        if self.validNumeral(string) {
            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        } else {
            return false
        }
        
        newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString(".", withString: "")
        
        textField.text = currencyStringValue(newText.integerValue)
        return false
    }
    
    
    func validNumeral(str: String) -> Bool {
        var numerals = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
        for numeral in numerals{
            if str == numeral{
                return true
            }
        }
        return false
    }
    
    func currencyStringValue(amount: Int) -> String {
        var finalString = NSMutableString(string: "$")
        var amountString = String(amount) as NSString

        if amount == 0 {
            finalString.appendString("0.00")
        } else if amount < 10 {
            finalString.appendString("0.0")
            finalString.appendString(amountString as String)
            println(amount)
        } else if amount < 100 {
            finalString.appendString("0.")
            finalString.appendString(amountString as String)
        } else if amount >= 100 {
            finalString.appendString(amountString as String)
            finalString.insertString(".", atIndex: amountString.length - 1)
            }
        return finalString as String
    }
}