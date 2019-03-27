//
//  ContactTableViewCell.swift
//  contactos
//
//  Created by Integro on 6/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var profilePicImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.profilePicImage.layer.cornerRadius = self.profilePicImage.frame.size.height / 2
        self.profilePicImage.clipsToBounds = true
    
    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configureCell(name: String, status: String, image: UIImage){
    
        self.nameLabel.text = name
        self.statusLabel.text = status
        self.profilePicImage.image = image
    }
    
    func configureCell(contact: Contact)
    {
        self.configureCell(name: contact.name, status: contact.status, image: contact.image)
    }

}
