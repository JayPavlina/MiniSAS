//
//  BattlesTableViewController.swift
//  MiniSas2
//
//  Created by Jay on 6/8/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import UIKit

class BattlesTableViewController: UITableViewController {
    
    struct StoryBoard {
        static let battlePrototypeCellIdentifier = "battlePrototypeCell"
    }

//    init(style: UITableViewStyle) {
//        super.init(style: style)
        // Custom initialization
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        splitViewController.preferredDisplayMode = UISplitViewControllerDisplayMode.AllVisible
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        println(parentViewController)
        println(navigationController)
        println(navigationController.parentViewController)
        println(parentViewController.parentViewController)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//         navigationItem.rightBarButtonItem = editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {0
        return 2
    }
    
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        let cell = tableView?.dequeueReusableCellWithIdentifier(StoryBoard.battlePrototypeCellIdentifier, forIndexPath: indexPath) as UITableViewCell

        cell.textLabel.text = "asdfadf"

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView?, canEditRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView?, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath?) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView?, moveRowAtIndexPath fromIndexPath: NSIndexPath?, toIndexPath: NSIndexPath?) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView?, canMoveRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    // buttons
    
//    @IBAction func didPressBackButton(sender : UIBarButtonItem) {
//        println("press back button")
//    }
    @IBAction func didPressBackButton(sender : UIBarButtonItem) {
        println("back")
    }

//    @IBAction func didPressAddButton(sender : UIBarButtonItem) {
//        println("add")
//    }
}
