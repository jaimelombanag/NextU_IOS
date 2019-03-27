//
//  ViewController.swift
//  Consoles
//
//  Created by Luis F Ruiz Arroyave on 3/11/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    //MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Properties
    let consoles = [["image": "atary2000.jpg", "title": "Atary 2000"], ["image": "atary7800.jpg", "title": "Atary 7800"], ["image": "superN.jpg", "title": "Super Nintendo"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cell = UINib(nibName: "ConsoleCell", bundle: nil)
        collectionView.register(cell, forCellWithReuseIdentifier: "ConsoleCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return consoles.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ConsoleCell", for: indexPath) as! ConsoleCell
        
        cell.imageView.image = UIImage(named: consoles[indexPath.row]["image"]!)
        cell.titleLabel.text = consoles[indexPath.row]["title"]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionElementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as! HeaderFooterView
            header.imageViewHeader.image = UIImage(named: "back.jpg")
            return header
        case UICollectionElementKindSectionFooter:
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Footer", for: indexPath) as! HeaderFooterView
            footer.imageViewFooter.image = UIImage(named: "back.jpg")
            return footer
        default:
            assert(false, "Error")
        }
        
    }
    
}

