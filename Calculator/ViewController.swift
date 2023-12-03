//
//  ViewController.swift
//  Calculator
//
//  Created by Matheus Kittler on 03/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorWorking: UILabel!
    @IBOutlet weak var calculatorResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    var workings:String = ""
    
    func clearAll() {
        workings = ""
        calculatorWorking.text = ""
        calculatorResult.text = ""
    }
    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) {
        if (!workings.isEmpty) {
            workings.removeLast()
            calculatorWorking.text = workings
        }
    }
    
    func addToWorking(value: String) {
        workings = workings + value
        calculatorWorking.text = workings
    }
    
    @IBAction func multiplicationTap(_ sender: Any) {
        addToWorking(value: "x")
    }
    
    @IBAction func divideTap(_ sender: Any) {
        addToWorking(value: "/")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorking(value: "+")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorking(value: "-")
    }
    
    @IBAction func equalsTap(_ sender: Any) {
        
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResult.text = resultString
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addToWorking(value: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addToWorking(value: "0")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorking(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorking(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorking(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorking(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addToWorking(value: "5")
    }
    
    @IBAction func sixTap(_ sender: Any) {
        addToWorking(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorking(value: "7")
    }
    
    @IBAction func TapNumberEight(_ sender: Any) {
        addToWorking(value: "8")
    }
    
    @IBAction func tapNumberNine(_ sender: Any) {
        addToWorking(value: "9")
    }
}
