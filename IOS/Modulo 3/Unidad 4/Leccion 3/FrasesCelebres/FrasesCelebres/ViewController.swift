//
//  ViewController.swift
//  FrasesCelebres
//
//  Created by Luis F Ruiz Arroyave on 12/22/15.
//  Copyright © 2015 NextU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    let cellIdentifier = "phraseCell"
    var data = [Phrase]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        data = Phrase.phrases()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! PhraseCell
        
        let phrase = data[indexPath.item]
        
        cell.phraseLabel.text = phrase.phrase
        cell.authorLabel.text = phrase.author
       
        return cell
    }

}

