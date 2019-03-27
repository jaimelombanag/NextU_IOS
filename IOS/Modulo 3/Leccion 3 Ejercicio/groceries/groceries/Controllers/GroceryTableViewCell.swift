//
//  GroceryTableViewCell.swift
//  groceries
//
//  Created by Integro on 7/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class GroceryTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    var grocery: Grocery = Grocery()
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func configure(name: String, image: UIImage, price: String){
        self.nameLabel.text = name
        self.priceLabel.text = price
        self.productImage.image = image
    }
    
    func configure(grocery: Grocery){
        self.configure(name: grocery.name, image: grocery.image, price: grocery.price)
    }
    
    class func loadFromNib() -> GroceryTableViewCell {
        let view = Bundle.main.loadNibNamed("GroceryTableViewCell", owner: self, options: nil)?.first
        
        return view as! GroceryTableViewCell
    }
    
}
