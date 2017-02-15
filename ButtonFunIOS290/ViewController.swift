//
//  ViewController.swift
//  ButtonFunIOS290
//
//  Created by Dylan Sebastian Weaver on 2/13/17.
//  Copyright © 2017 Dylan Sebastian Weaver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder()
    }
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        nameField.resignFirstResponder()
        numberField.resignFirstResponder()
    }
    @IBAction func onSliderChanged(_ sender: UISlider) {
        sliderLabel.text = "\(lroundf(sender.value))"
        
    }
    @IBAction func onSwitchChange(_ sender: UISwitch) {
        let setting = sender.isOn
        leftSwitch.setOn(setting, animated: true)
        rightSwitch.setOn(setting, animated:true)
        
    }
    @IBAction func toggleControls(_ sender: UISegmentedControl) {
    }
} 

