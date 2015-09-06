//
//  zipDelegate.swift
//  TextFieldDelegateExercise
//
//  Created by Moritz Gort on 06/09/15.
//  Copyright (c) 2015 Gabriele Gort. All rights reserved.
//

import Foundation
import UIKit

class zipDelegate: NSObject, UITextFieldDelegate {

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if (textField.text as NSString).length < 5 {
            var str = textField.text
            if isNumeral(string) {
                textField.text = (str as NSString).stringByReplacingCharactersInRange(range, withString: string)
            } else {
                textField.text = (str as NSString).stringByReplacingCharactersInRange(range, withString: "")
            }
        } else {
            return false
        }
        return false
    }
    
    func isNumeral(str: String) -> Bool {
        var numerals = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
        for numeral in numerals{
            if str == numeral{
                return true
            }
        }
        return false
    }
    
}