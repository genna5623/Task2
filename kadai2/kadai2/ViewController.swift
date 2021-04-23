//
//  ViewController.swift
//  kadai2
//
//  Created by 永野玄 on 2021/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
   
    @IBOutlet weak var calculation: UISegmentedControl!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }



    @IBAction func resultButton(_ sender: Any) {
    
    
       
        let num1:Int = Int(self.firstNumber.text!) ?? 0
        let num2:Int = Int(self.secondNumber.text!) ?? 0
        let sum:Int

        
        switch calculation.selectedSegmentIndex {
        case 0:
             sum =  num1 + num2
        case 1:
             sum = num1 - num2
        case 2:
             sum = num1 * num2
        case 3:
            if num2 == 0 {
                return resultLabel.text = "割るかずには0以外を入力してください"
            } else {
             sum = num1 / num2
            }
            default:
            return
        }
 
        resultLabel.text = String(sum)
    }

}
