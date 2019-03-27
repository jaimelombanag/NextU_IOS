//
//  JobOfferTableViewCell.swift
//  jobs
//
//  Created by Integro on 9/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class JobOfferTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var wageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configure(name: String, description: String, wage: String){
        self.nameLabel.text = name
        self.descriptionLabel.text = description
        self.wageLabel.text = "$\(wage)"
    }
    
    func configure(offer: JobOffer){
        self.configure(name: offer.name, description: offer.description, wage: String(offer.wage))
    }

}
