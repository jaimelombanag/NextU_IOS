//
//  JobOffer.swift
//  jobs
//
//  Created by Integro on 9/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

class JobOffer{
    var name: String!
    var description: String!
    var wage: Double!
    
    init(name: String, description: String, wage: Double) {
        self.name = name
        self.description = description
        self.wage = wage
    }
    
    static func getData() -> [JobOffer]{
        let rawData = [["name": "Desarrollador iOS", "description": "Crear una aplicación nativa par iOS con swift 3", "wage": 100_000.0], ["name": "Desarrollador Android", "description": "Crear una aplicación nativa par Android con Java", "wage": 95_000.0], ["name": "Desarrollador Web", "description": "Crear plataformas web con react y Angular 2", "wage": 80_000.0]]
        
        var data: [JobOffer] = []
        for item in rawData{
            data.append(JobOffer(name: item["name"] as! String, description: item["description"] as! String, wage: item["wage"] as! Double))
        }
        
        return data
    }
}
