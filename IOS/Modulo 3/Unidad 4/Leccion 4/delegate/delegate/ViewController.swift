//
//  ViewController.swift
//  delegate
//
//  Created by Integro on 16/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var pages: UIPageControl!
    
    var data = Phrase.famousPhrases()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "PhraseCollectionViewCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "cell")
        self.pages.numberOfPages = data.count
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PhraseCollectionViewCell
        let phrase = data[indexPath.row]
        cell.phraseLabel.text = phrase.text
        cell.backgroundColor = phrase.color
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let phrase = data[indexPath.row]
        let alert = UIAlertController(title: "Autor", message: "El autor de la frase es \(phrase.author!)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.collectionView.frame.size
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let firstCell = self.collectionView.visibleCells.first
        let index = self.collectionView.indexPath(for: firstCell!)
        self.pages.currentPage = (index?.row)!
    }


}

