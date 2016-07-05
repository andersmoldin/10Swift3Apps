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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func move(_ sender: UIButton) {
        if let title = sender.currentTitle {
            switch title {
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

}

