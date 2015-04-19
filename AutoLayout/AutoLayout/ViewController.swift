//
//  ViewController.swift
//  AutoLayout
//
//  Created by Panaswift Teachers on 01/03/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // MARK: TableView DataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 33
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Something"
        return cell
    }
    
    
    // MARK: TabelView Delegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Selected")
    }
    
    
    // MARK: ScrollView Delegate
    func scrollViewDidScroll(scrollView: UIScrollView) {
        println("Scroll")
    }
    
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        println("Decelerate")
    }
    

}

