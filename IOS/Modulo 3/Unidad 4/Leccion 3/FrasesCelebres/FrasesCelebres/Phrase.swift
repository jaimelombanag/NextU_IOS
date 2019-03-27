//
//  Phrase.swift
//  FrasesCelebres
//
//  Created by Luis F Ruiz Arroyave on 12/22/15.
//  Copyright © 2015 NextU. All rights reserved.
//

import Foundation

class Phrase {
    
    //MARK Properties
    let phrase: String
    let author: String
    let nacionality: String
    let shortBiography: String
    
    //MARK Init
    
    //Designated initializer
    init(phrase:String, author:String, nacionality:String, shortBiography:String){
        self.phrase = phrase
        self.author = author
        self.nacionality = nacionality
        self.shortBiography = shortBiography
    }
    
    //Convenience initializer
    convenience init(){
        self.init(phrase:"", author:"", nacionality:"", shortBiography:"")
    }
    
    //MARK Utils
    
    static func phrases() -> [Phrase] {
        var phrases = [Phrase]()
        let data = [
            ["phrase":"Si vives cada día de tu vida como si fuera el último, algún día realmente tendrás razón", "author":"Steve Jobs", "nacionality":"Estadounidense", "shortBiography":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel enim quam. Phasellus aliquet egestas diam et porta. Aliquam erat volutpat. Pellentesque laoreet rhoncus sapien, eget molestie nibh egestas quis. Quisque sit amet ullamcorper mi. Maecenas nec congue justo, sed varius ipsum."],
            ["phrase":"La primera obligación de todo ser humano es ser feliz, la segunda es hacer feliz a los demás", "author":"Cantinflas", "nacionality":"Mexicana", "shortBiography":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel enim quam. Phasellus aliquet egestas diam et porta. Aliquam erat volutpat. Pellentesque laoreet rhoncus sapien, eget molestie nibh egestas quis. Quisque sit amet ullamcorper mi. Maecenas nec congue justo, sed varius ipsum."],
            ["phrase":"La persona que no está en paz consigo misma, será una persona en guerra con el mundo entero", "author":"Mahatma Gandhi", "nacionality":"India", "shortBiography":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel enim quam. Phasellus aliquet egestas diam et porta. Aliquam erat volutpat. Pellentesque laoreet rhoncus sapien, eget molestie nibh egestas quis. Quisque sit amet ullamcorper mi. Maecenas nec congue justo, sed varius ipsum."],
            ["phrase":"Sólo porque alguien no te ame como tú quieres, no significa que no te ame con todo su ser", "author":"Gabriel García Márquez", "nacionality":"Colombiana", "shortBiography":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel enim quam. Phasellus aliquet egestas diam et porta. Aliquam erat volutpat. Pellentesque laoreet rhoncus sapien, eget molestie nibh egestas quis. Quisque sit amet ullamcorper mi. Maecenas nec congue justo, sed varius ipsum."],
            ["phrase":"El amor no necesita ser entendido, sólo necesita ser demostrado", "author":"Paulo Coelho", "nacionality":"Brasileño", "shortBiography":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel enim quam. Phasellus aliquet egestas diam et porta. Aliquam erat volutpat. Pellentesque laoreet rhoncus sapien, eget molestie nibh egestas quis. Quisque sit amet ullamcorper mi. Maecenas nec congue justo, sed varius ipsum."],
            ["phrase":"Dejar de hacer publicidad para ahorrar dinero, es como parar tu reloj para ahorrar tiempo", "author":"Henry Ford", "nacionality":"Estadounidense", "shortBiography":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel enim quam. Phasellus aliquet egestas diam et porta. Aliquam erat volutpat. Pellentesque laoreet rhoncus sapien, eget molestie nibh egestas quis. Quisque sit amet ullamcorper mi. Maecenas nec congue justo, sed varius ipsum."],
            ["phrase":"Yo fallé en algunos exámenes, pero mi compañero pasó todo. Ahora el es un ingeniero de Microsoft y yo soy el dueño de Microsoft", "author":"Bill Gates", "nacionality":"Estadounidense", "shortBiography":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel enim quam. Phasellus aliquet egestas diam et porta. Aliquam erat volutpat. Pellentesque laoreet rhoncus sapien, eget molestie nibh egestas quis. Quisque sit amet ullamcorper mi. Maecenas nec congue justo, sed varius ipsum."],
        ]
        
        for item in data{
            let phrase = Phrase(phrase:item["phrase"]!, author:item["author"]!, nacionality:item["nacionality"]!, shortBiography:item["shortBiography"]!)
            phrases.append(phrase)
        }
        
        return phrases
    }
    
    
}
