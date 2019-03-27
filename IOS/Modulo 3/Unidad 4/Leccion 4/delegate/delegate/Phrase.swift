//
//  Phrase.swift
//  delegate
//
//  Created by Integro on 16/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit
class Phrase{
    var author: String!
    var text: String!
    var color: UIColor!
    
    init(author: String, text: String, color: UIColor) {
        self.author = author
        self.text = text
        self.color = color
    }
    
    static func famousPhrases()->[Phrase]{
        let rawData = [
            ["author": "Mahatma Gandhi", "text": "You must be the change you wish to see in the world.", "color": UIColor.cyan],
            ["author": "Abraham Lincoln", "text": "Whatever you are, be a good one.", "color": UIColor.magenta],
            ["author": "Martin Luther King, Jr", "text": "Darkness cannot drive out darkness; only light can do that. Hate cannot drive out hate; only love can do that.", "color": UIColor.green],
            ["author": "Albert Einstein", "text": "Try not to become a man of success, but rather try to become a man of value.", "color": UIColor.red],
            ["author": "Aristotle", "text": "It is the mark of an educated mind to be able to entertain a thought without accepting it.", "color": UIColor.orange]]
        
        var data: [Phrase] = []
        for phrase in rawData {
            data.append(Phrase(author: phrase["author"] as! String, text: phrase["text"] as! String, color: phrase["color"] as! UIColor))
        }
        return data
    }
}
