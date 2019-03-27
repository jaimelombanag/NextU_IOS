//
//  DetailViewController.swift
//  groceries
//
//  Created by Integro on 7/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    var grocery: Grocery = Grocery()
    
    @IBOutlet weak var cellContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let detail = GroceryTableViewCell.loadFromNib()
        detail.configure(grocery: grocery)
        self.cellContainerView.addSubview(detail)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
