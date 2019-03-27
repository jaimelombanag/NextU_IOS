//
//  ViewController.swift
//  Colors
//
//  Created by Luis F Ruiz Arroyave on 3/11/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    //MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Properties
    var longPressGesture = UILongPressGestureRecognizer()
    let cellIdentifier = "ColorCell"
    var data = [
        ["color":"Orange", "hexColor": "#3498db", "red":0.204, "green":0.596, "blue": 0.859, "alpha": 1],
        ["color":"Emerald", "hexColor": "#2ecc71", "red":0.18, "green":0.8, "blue": 0.443, "alpha": 1],
        ["color":"SunFlower", "hexColor": "#f1c40f", "red":0.945, "green":0.769, "blue": 0.059, "alpha": 1],
        ["color":"Peter River", "hexColor": "#3498db", "red":0.204, "green":0.596, "blue": 0.859, "alpha": 1],
        ["color":"Carrot", "hexColor": "#e67e22", "red":0.902, "green":0.494, "blue": 0.133, "alpha": 1],
        ["color":"Midnight Blue", "hexColor": "#2c3e50", "red":0.173, "green":0.243, "blue": 0.314, "alpha": 1],
        ["color":"Silver", "hexColor": "#bdc3c7", "red":0.741, "green":0.765, "blue": 0.78, "alpha": 1]
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        longPressGesture = UILongPressGestureRecognizer(target: self, action:#selector(self.handleGesture(gesture:)))
        collectionView.addGestureRecognizer(longPressGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ColorCell
        let item = data[indexPath.item]
        
        cell.colorView.backgroundColor = UIColor(red: CGFloat(item["red"] as! Double), green: CGFloat(item["green"] as! Double), blue: CGFloat(item["blue"] as! Double), alpha: CGFloat(item["alpha"] as! Int))
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let item = data[sourceIndexPath.item]
        data.remove(at: sourceIndexPath.row)
        data.insert(item, at: destinationIndexPath.item)
        
    }
    
    func handleGesture(gesture:UILongPressGestureRecognizer) {
        switch gesture.state {
        case  UIGestureRecognizerState.began:
            guard let selectedIndexPath = self.collectionView.indexPathForItem(at: gesture.location(in: collectionView)) else {
                break
            }
            collectionView.beginInteractiveMovementForItem(at: selectedIndexPath)
        case UIGestureRecognizerState.changed:
            collectionView.updateInteractiveMovementTargetPosition(gesture.location(in: gesture.view!))
        case UIGestureRecognizerState.ended:
            collectionView.endInteractiveMovement()
        default:
            collectionView.cancelInteractiveMovement()
        }
    }
   
}

