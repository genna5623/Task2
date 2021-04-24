//
//  ViewController.swift
//  kadai2
//
//  Created by 永野玄 on 2021/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var firstNumber: UITextField!
    
    @IBOutlet private weak var secondNumber: UITextField!

    @IBOutlet private weak var calculation: UISegmentedControl!
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction func resultButton(_ sender: Any) {
        let num1: Int = Int(self.firstNumber.text!) ?? 0
        let num2: Int = Int(self.secondNumber.text!) ?? 0
        let resultText: String

        switch calculation.selectedSegmentIndex {
        case 0:
            resultText = String(num1 + num2)
        case 1:
            resultText = String(num1 - num2)
        case 2:
            resultText = String(num1 * num2)
        case 3:
            if num2 == 0 {
                resultText = "割るかずには0以外を入力してください"
            } else {
                resultText = String(num1 / num2)
            }
        default:
            return
        }

        resultLabel.text = resultText
    }
}
