//
//  ViewController.swift
//  PlayWithAttributes
//
//  Created by Anders Moldin on 2016-07-05.
//  Copyright © 2016 Anders Moldin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickColorLabel: UILabel!
    @IBOutlet weak var colorSlider: UISlider!
    @IBOutlet weak var blackColorSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func move(_ sender: UIButton) {
        if let direction = sender.currentTitle {
            switch direction {
            case "Move left":
                label.frame.origin.x -= 10
            case "Move right":
                label.frame.origin.x += 10
            case "Move up":
                label.frame.origin.y -= 10
            case "Move down":
                label.frame.origin.y += 10
            default:
                label.text = "Fel"
            }
        }
    }
    
    @IBAction func rotateFonts(_ sender: AnyObject) {
        let availableFonts = UIFont.familyNames()
        
        let random = Int(arc4random_uniform(UInt32(availableFonts.count)))
        
        label.font = UIFont(name: availableFonts[random], size: 17)
    }
    
    @IBAction func blackColorSwitch(_ sender: AnyObject) {
        if blackColorSwitch.isOn {
            label.textColor = UIColor.black()
            pickColorLabel.isEnabled = false
            colorSlider.isEnabled = false
        } else {
            label.textColor = UIColor(hue: CGFloat(colorSlider.value)/360, saturation: 100/100, brightness: 100/100, alpha: 1.0)
            pickColorLabel.isEnabled = true
            colorSlider.isEnabled = true
        }
    }
    
    @IBAction func colorSlider(_ sender: AnyObject) {
        label.textColor = UIColor(hue: CGFloat(colorSlider.value)/360, saturation: 100/100, brightness: 100/100, alpha: 1.0)
    }
}

