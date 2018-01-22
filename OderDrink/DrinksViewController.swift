//
//  DrinksViewController.swift
//  OderDrink
//
//  Created by 胡靜諭 on 2018/1/17.
//  Copyright © 2018年 胡靜諭. All rights reserved.
//

import UIKit

class DrinksViewController: UIViewController {
    
    var dinks = DrinkData.all
    var drink: DrinkData?
    var indexPath: IndexPath = []

    
    @IBOutlet weak var drinkNameTextField: UITextField!
    @IBOutlet weak var drinkPriceTextField: UITextField!
    
    
    
    @IBAction func saveButtonPress(_ sender: Any) {
        
        let drinkName = drinkNameTextField.text
        
        let drinkPrice = drinkPriceTextField.text
    
        
        if drink != nil {
            
            var WantToBeModified = DrinkData.all[indexPath.row]
            WantToBeModified.drinkName = drinkName!
            WantToBeModified.drinkPrice = drinkPrice!
            
        }else {
            // 代表要新增表情符號 製作成emoji
            let aDrink = DrinkData(drinkName:drinkName!, drinkPrice: drinkPrice!)
            //    將emoji存入app
            DrinkData.add(drink:aDrink)
        }
        
        navigationController?.popViewController(animated: true)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


