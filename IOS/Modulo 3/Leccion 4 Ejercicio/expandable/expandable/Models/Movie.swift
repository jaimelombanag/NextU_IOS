//
//  Image.swift
//  expandable
//
//  Created by Integro on 8/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

class Movie {
    var name: String!
    var imageName: String!
    
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
    
    
    static func getData() -> [Movie]{
        let rawData = [["name":"SuperHeroes", "imageName": "movies1"],
                       ["name":"John Action", "imageName": "movies2"],
                       ["name":"DareDanger", "imageName": "movies3"]]
        var data: [Movie] = []
        for item in rawData {
            data.append(Movie(name: item["name"]!, imageName: item["imageName"]!))
        }
        return data
    }
}
