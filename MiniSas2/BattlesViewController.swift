//
//  BattlesViewController.swift
//  MiniSas2
//
//  Created by Jay on 6/10/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import UIKit

class BattlesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView : UITableView
    
    override func viewDidLoad()  {
        println("load")
        println(splitViewController)
        splitViewController.delegate = battlesSplitViewControllerDelegate
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        println("will layout subviews")
        splitViewController.preferredDisplayMode = .AllVisible
//        tableView.setContentOffset(CGPointZero, animated: false)
    }
    
    // #pragma mark - Handle actions
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {

    }
    
    // #pragma mark - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        let cell = tableView?.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = "asdfadf"
        
        return cell
    }
    
}
