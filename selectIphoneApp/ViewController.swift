//
//  ViewController.swift
//  selectIphoneApp
//
//  Created by 羅承志 on 2021/5/3.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var iphoneSegmented: UISegmentedControl!
    @IBOutlet weak var colorSegmented: UISegmentedControl!
    @IBOutlet weak var quantityStepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseIphoneStepper(_ sender: UIStepper) {
        //stepper顯現的數字有小數點，所以轉成整數Int
        let quantity = Int(quantityStepper.value)
        stepperLabel.text = String(quantity)
    }
    
    @IBAction func sendButton(_ sender: UIButton) {
        //如果三個TextField等於空字串，顯示”請完整填寫資料“，條件二，colorSegmented是2的話顯示”未上市“，其他條件都可”完成訂購“
        if nameTextField.text == "" || addressTextField.text == "" || numberTextField.text == "" {
            resultLabel.text = String("請完整填寫資料")
        } else if colorSegmented.selectedSegmentIndex == 2 {
            resultLabel.text = String("未上市")
        } else {
            resultLabel.text = String("訂購完成")
        }
    }
}
