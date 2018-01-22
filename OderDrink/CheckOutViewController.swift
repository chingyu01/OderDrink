//
//  CheckOutViewController.swift
//  OderDrink
//
//  Created by 胡靜諭 on 2018/1/17.
//  Copyright © 2018年 胡靜諭. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {
    
    var totalMoney:String = ""
    
    var inputNum = 0
    
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalAmountLabel.text = totalMoney
    }
    
    @IBOutlet weak var showResultButton: UILabel!
    
    
    @IBAction func clearButton(_ sender: Any) {
        
        showResultButton.text = "0"
    }
    
    @IBAction func digitButtonPress(_ sender: UIButton) {
        
        inputNum = Int(sender.currentTitle!)!
        
        if showResultButton.text != nil {
            if showResultButton.text == "0" {
                showResultButton.text = "\(inputNum)"
                
            }else{
                
                showResultButton.text = showResultButton.text!+"\(inputNum)"
            }
        }
        
        
        
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}



