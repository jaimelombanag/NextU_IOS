//
//  ViewController.swift
//  jobs
//
//  Created by Integro on 9/03/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating {

    @IBOutlet weak var tableview: UITableView!
    var offers: [JobOffer] = JobOffer.getData()
    var filteredOffers: [JobOffer] = []
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.tableHeaderView = searchController.searchBar
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredOffers.count
        } else {
            return offers.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! JobOfferTableViewCell
        let offer: JobOffer!
        if searchController.isActive && searchController.searchBar.text != "" {
            offer = filteredOffers[indexPath.row]
        } else {
            offer = offers[indexPath.row]
        }
        cell.configure(offer: offer)
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filteredOffers = offers.filter { (offer) -> Bool in
            return String(offer.wage).hasPrefix(searchController.searchBar.text!)
        }
        self.tableview.reloadData()
    }
    
    


}

