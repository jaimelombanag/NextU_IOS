//
//  Grocery.swift
//  groceries
//
//  Created by Integro on 7/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit
class Grocery {
    var name: String!
    var image: UIImage!
    var price: String!
    
    init(name: String, image: UIImage, price: String) {
        self.name = name
        self.image = image
        self.price = price
    }
    
    convenience init(){
        self.init(name: "", image: UIImage(named:"food")!, price: "")
    }
    
    static func getData() -> [Grocery]{
        let rawData = [["name":"leche", "price":"$1USD", "image":"milk"],
                       ["name":"pan", "price":"$5USD", "image":"bread"],
                       ["name":"vegetales", "price":"$15USD", "image":"vegetables"]]
        
        var data: [Grocery] = []
        for item in rawData {
            data.append(Grocery(name: item["name"]!, image: UIImage(named: item["image"]!)!, price: item["price"]!))
        }
        
        return data
    }
}
