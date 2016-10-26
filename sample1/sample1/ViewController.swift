//
//  ViewController.swift
//  sample1
//
//  Created by Fumiya Gemba on 2016/10/24.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lhsTextField: UITextField!
    @IBOutlet weak var rhsTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButton(_ sender: AnyObject) {
        let lhs = Int(lhsTextField.text!)
        let rhs = Int(rhsTextField.text!)
        resultLabel.text = String(lhs! + rhs!)
    }
}

