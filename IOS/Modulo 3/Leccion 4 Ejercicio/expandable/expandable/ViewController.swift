//
//  ViewController.swift
//  expandable
//
//  Created by Integro on 8/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableview: UITableView!
    var expandedRows: Set<Int> = Set<Int>()
    let movies: [Movie] = Movie.getData()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ExpandableTableViewCell
        cell.configure(movie: movies[indexPath.row])
        cell.table = self.tableview
        cell.isExpandable = self.expandedRows.contains(indexPath.row)
        return cell
    }
   
   func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 195
    
    }
    

   

}

