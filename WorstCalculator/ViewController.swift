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
        
        if let firstValueDouble = Double(firstValue.text!) {
            if let secondValueDouble = Double(secondValue.text!){
                data["firstValue"] = firstValueDouble
                data["secondValue"] = secondValueDouble
            }
        }
        
        
        return data;
    }
    
    
    @IBAction func sumBtn(_ sender: Any) {
        let data = getValues();
        result.text = String((data["firstValue"]!) + (data["secondValue"]!));
        
    }
    
    
    @IBAction func subBtn(_ sender: Any) {
        let data = getValues();
        result.text = String((data["firstValue"]!) - (data["secondValue"]!));
    }
    
    
    @IBAction func mulBtn(_ sender: Any) {
        let data = getValues();
        result.text = String((data["firstValue"]!) * (data["secondValue"]!));
    }
    
    
    @IBAction func divBtn(_ sender: Any) {
        let data = getValues();
        result.text = String((data["firstValue"]!) / (data["secondValue"]!));
    }
    

}

