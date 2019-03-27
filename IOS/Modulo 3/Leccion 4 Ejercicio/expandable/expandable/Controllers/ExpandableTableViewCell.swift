//
//  ExpandableTableViewCell.swift
//  expandable
//
//  Created by Integro on 8/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ExpandableTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!
    var table: UITableView!
    var isExpandable: Bool = false {
        didSet{
            if !isExpandable{
                self.imageHeightConstraint.constant = 0.0
            } else {
                self.imageHeightConstraint.constant = 160
            }
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func expandCell(_ sender: Any) {
        self.isExpandable = !self.isExpandable
        self.table.beginUpdates()
        self.table.endUpdates()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(name: String, image: UIImage){
        self.titleLabel.text = name
        self.movieImage.image = image
        
    }
    
    func configure(movie: Movie){
        self.configure(name: movie.name, image: UIImage(named: movie.imageName)!)
    }
    

}
