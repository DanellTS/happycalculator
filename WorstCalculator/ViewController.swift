//
//  ViewController.swift
//  WorstCalculator
//
//  Created by Danell on 1/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstValue: UITextField!
    
    @IBOutlet weak var secondValue: UITextField!

    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func getValues() -> [String : Double] {
        var data = [String : Double]()
        var firstValueInt = Double(firstValue.text ?? "1")
        var secondValueInt = Double(secondValue.text ?? "1")
        
        data["firstValue"] = firstValueInt
        data["secondValue"] = secondValueInt
        
        return data;
    }
    
    
    @IBAction func sumBtn(_ sender: Any) {
        var data = getValues();
        result.text = String((data["firstValue"] ?? 1) + (data["secondValue"] ?? 1));
        
    }
    
    
    @IBAction func subBtn(_ sender: Any) {
        var data = getValues();
        result.text = String((data["firstValue"] ?? 1) - (data["secondValue"] ?? 1));
    }
    
    
    @IBAction func mulBtn(_ sender: Any) {
        var data = getValues();
        result.text = String((data["firstValue"] ?? 1) * (data["secondValue"] ?? 1));
    }
    
    
    @IBAction func divBtn(_ sender: Any) {
        var data = getValues();
        result.text = String((data["firstValue"] ?? 1) / (data["secondValue"] ?? 1));
    }
    

}

