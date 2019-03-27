//
//  Country.swift
//  countryAccesories
//
//  Created by Integro on 6/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import Foundation
class Country {
    var name: String!
    var capital: String!
    
    init(name: String, capital: String) {
        self.name = name
        self.capital = capital
    }
    
    static func getData() -> [Country]{
        let rawData = [["Country":"Colombia", "Capital":"Bogota"],
                       ["Country":"Argentina", "Capital":"Buenos Aires"],
                       ["Country":"USA", "Capital":"Washington D.C"],
                       ["Country":"Canada", "Capital":"Ottawa"]]
        
        var data:[Country] = []
        for item in rawData{
            data.append(Country(name: item["Country"]!, capital: item["Capital"]!))
        }
        
        return data
    }
}
