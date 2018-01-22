//
//  DrinkData.swift
//  OderDrink
//
//  Created by 胡靜諭 on 2018/1/17.
//  Copyright © 2018年 胡靜諭. All rights reserved.
//

import Foundation
import UIKit


struct DrinkData {
    
    static var all: [DrinkData] = []
    
    var drinkName = String()
    var drinkPrice = String()
    
//    var imagePath: String?
//
//    var image: UIImage?{
//
//        get {
//
//            if let path = imagePath {
//
//                let image = UIImage (contentsOfFile: path)
//                return image
//            }   else {
//
//                let path =
//                    Bundle.main.path(forResource:"tea02", ofType:"jpg")
//                let image = UIImage(contentsOfFile: path!)
//                return image
//            }
    
    

    
    
    static func add(drink: DrinkData) {
        all.append(drink)
    }
    
    static func removeDrinkData (at index: Int) {
        all.remove (at:index)
    }

}
