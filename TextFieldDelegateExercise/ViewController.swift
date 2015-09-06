//
//  ViewController.swift
//  TextFieldDelegateExercise
//
//  Created by Moritz Gort on 06/09/15.
//  Copyright (c) 2015 Gabriele Gort. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var moneyField: UITextField!
    @IBOutlet weak var switchField: UITextField!
    
    let zipFieldDelegate = zipDelegate()
    let moneyFieldDelegate = moneyDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchField.enabled = false
        
        self.zipField.delegate = zipFieldDelegate
        self.moneyField.delegate = moneyFieldDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func textFieldEnabler(sender: UISwitch) {
        let switcher = (sender as UISwitch)
        switchField.enabled = switcher.on
    }
    

}

