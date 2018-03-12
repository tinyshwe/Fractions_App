//
//  ViewController.swift
//  Fractions_App
//
//  Created by Satya Prakash on 2/19/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = " "
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    @IBAction func add(_ sender: UIButton) {
        
        var addition = Fractions(num: Int(num.text ?? "0") ?? 0 , den: Int(den.text ?? "0") ?? 0)
        var addition1 = Fractions(num: Int(num1.text ?? "0") ?? 0 , den: Int(den1.text ?? "0") ?? 0)
        result.text = addition.add(f: addition1).description
        
    }
    
    @IBAction func subtract(_ sender: UIButton) {
        var subtract = Fractions(num: Int(num.text ?? "0") ?? 0 , den: Int(den.text ?? "0") ?? 0)
        var subtract1 = Fractions(num: Int(num1.text ?? "0") ?? 0 , den: Int(den1.text ?? "0") ?? 0)
        result.text = subtract.subtract(f: subtract1).description
    }
    
    @IBAction func divide(_ sender: UIButton) {
        var divide = Fractions(num: Int(num.text ?? "0") ?? 0 , den: Int(den.text ?? "0") ?? 0)
        var divide1 = Fractions(num: Int(num1.text ?? "0") ?? 0 , den: Int(den1.text ?? "0") ?? 0)
        result.text = divide.divide(f: divide1).description
    }
    @IBAction func multiply(_ sender: UIButton) {
        var multiply = Fractions(num: Int(num.text ?? "0") ?? 0 , den: Int(den.text ?? "0") ?? 0)
        var multiply1 = Fractions(num: Int(num1.text ?? "0") ?? 0 , den: Int(den1.text ?? "0") ?? 0)
        result.text = multiply.multiply(f: multiply).description
    }
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var den: UITextField!
    @IBOutlet weak var num: UITextField!
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var den1: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
}

