//
//  Contact.swift
//  contactos
//
//  Created by Integro on 6/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//
import UIKit
class Contact {
    var name: String!
    var status: String!
    var image: UIImage!
    
    init(name: String, status: String, image: UIImage) {
        self.name = name
        self.status = status
        self.image = image
    }
    
    static func getData() -> [Contact]{
        let rawData = [["name": "John", "status": "Estoy disponible", "imageName": "male"],
                       ["name": "Jane", "status": "Estoy ocupada", "imageName": "female"],
                       ["name": "Robert", "status": "Estoy ausente", "imageName": "male"],
                       ["name": "Lucia", "status": "No conectada", "imageName": "female"]]
        
        var data: [Contact] = []
        
        for item in rawData {
            data.append(Contact(name: item["name"]!, status: item["status"]!, image: UIImage(named: item["imageName"]!)!))
        }
        
        return data
    }
}
