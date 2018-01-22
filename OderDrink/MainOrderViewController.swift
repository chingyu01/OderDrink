//
//  MainOrderViewController.swift
//  OderDrink
//
//  Created by 胡靜諭 on 2018/1/17.
//  Copyright © 2018年 胡靜諭. All rights reserved.
//

import UIKit

class MainOrderViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var drinkTableView: UITableView!

    
    var drinks = DrinkData.all
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        tableView會問ＶＣ有幾列
        return drinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrinkCell", for: indexPath)
        
        //        最好的方法如下 就是上面先擺好陣列 然後在下面呼叫是第幾個位置indexPath.row
        
       
        cell.textLabel?.text = drinks[indexPath.row].drinkName
        cell.detailTextLabel?.text = drinks[indexPath.row].drinkPrice
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

     override func viewWillAppear(_ animated: Bool) {
        drinks = DrinkData.all
        drinkTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            //            砍資料
            DrinkData.removeDrinkData(at: indexPath.row)
            drinks = DrinkData.all
            //            砍畫面
            tableView.deleteRows(at:[indexPath],with:.automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let drink = drinks [indexPath.row]
        total += Int(drinks[indexPath.row].drinkPrice)!

    }
    
    @IBOutlet weak var showPrice: UILabel!
    
    var total = 0 {
        //        property observer
        didSet {
            showPrice.text = "\(total)"
        }
    }
    @IBAction func checkoutButtonPress(_ sender: Any) {
        
        //        準備check out controller 控制器
        if let checkVC = storyboard?.instantiateViewController(withIdentifier: "CheckOutViewController") as? CheckOutViewController{
            //            把應收金額傳給第二頁顯示
            checkVC.totalMoney = "\(total)"
            show (checkVC, sender: nil)
        }
    }
 }


