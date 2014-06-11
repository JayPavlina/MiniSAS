//
//  BattlesSplitViewControllerDelegate.swift
//  MiniSas2
//
//  Created by Jay on 6/10/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import UIKit

extension UISplitViewController {
    var primaryViewController : UIViewController { return self.viewControllers[0] as UIViewController }
    var secondaryViewController : UIViewController { return self.viewControllers[1] as UIViewController }
}

let battlesSplitViewControllerDelegate = BattlesSplitViewControllerDelegate()

class BattlesSplitViewControllerDelegate : UISplitViewControllerDelegate
{
    // This method allows a client to update any bar button items etc.
    func splitViewController(svc: UISplitViewController!, willChangeToDisplayMode displayMode: UISplitViewControllerDisplayMode) {
        println("will change to display mode")
    }
    
    // Called by the gesture AND barButtonItem to determine what they will set the display mode to (and what the displayModeButtonItem's appearance will be.) Return UISplitViewControllerDisplayModeAutomatic to get the default behavior.
//    func targetDisplayModeForActionInSplitViewController(svc: UISplitViewController!) -> UISplitViewControllerDisplayMode {
//        println("diapsldffds")
//            return UISplitViewControllerDisplayMode.AllVisible
//    }
    
    // Override this method to customize the behavior of `showViewController:` on a split view controller. Return YES to indicate that you've handled
    // the action yourself; return NO to cause the default behavior to be executed.
//    func splitViewController(splitViewController: UISplitViewController!, showViewController vc: UIViewController!, sender: AnyObject!) -> Bool {
//        
//    }
    
    // Override this method to customize the behavior of `showDetailViewController:` on a split view controller. Return YES to indicate that you've
    // handled the action yourself; return NO to cause the default behavior to be executed.
//    func splitViewController(splitViewController: UISplitViewController!, showDetailViewController vc: UIViewController!, sender: AnyObject!) -> Bool {
//        
//    }
    
    // Return the view controller which is to become the primary view controller after `splitViewController` is collapsed due to a transition to
    // the horizontally-compact size class. If you return `nil`, then the argument will perform its default behavior (i.e. to use its current primary view
    // controller).
//    func primaryViewControllerForCollapsingSplitViewController(splitViewController: UISplitViewController!) -> UIViewController! {
//        return splitViewController.primaryViewController
//    }
    
    // Return the view controller which is to become the primary view controller after the `splitViewController` is expanded due to a transition
    // to the horizontally-regular size class. If you return `nil`, then the argument will perform its default behavior (i.e. to use its current
    // primary view controller.)
//    func primaryViewControllerForExpandingSplitViewController(splitViewController: UISplitViewController!) -> UIViewController! {
//        
//    }
    
    // This method is called when a split view controller is collapsing its children for a transition to a compact-width size class. Override this
    // method to perform custom adjustments to the view controller hierarchy of the target controller.  When you return from this method, you're
    // expected to have modified the `primaryViewController` so as to be suitable for display in a compact-width split view controller, potentially
    // using `secondaryViewController` to do so.  Return YES to prevent UIKit from applying its default behavior; return NO to request that UIKit
    // perform its default collapsing behavior.
    func splitViewController(splitViewController: UISplitViewController!, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
        // this makes it go to the primary view in compact mode
        // I can return false to make it do its default thing
        return true
    }
    
    // This method is called when a split view controller is separating its child into two children for a transition from a compact-width size
    // class to a regular-width size class. Override this method to perform custom separation behavior.  The controller returned from this method
    // will be set as the secondary view controller of the split view controller.  When you return from this method, `primaryViewController` should
    // have been configured for display in a regular-width split view controller. If you return `nil`, then `UISplitViewController` will perform
    // its default behavior.
//    func splitViewController(splitViewController: UISplitViewController!, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController!) -> UIViewController! {
//        return splitViewController.primaryViewController
//    }
//
//    func splitViewControllerSupportedInterfaceOrientations(splitViewController: UISplitViewController!) -> Int {
//        
//    }
//    func
//        splitViewControllerPreferredInterfaceOrientationForPresentation(splitViewController: UISplitViewController!) -> UIInterfaceOrientation {
//        
//    }
    
    // Called when a button should be added to a toolbar for a hidden view controller.
    // Implementing this method allows the hidden view controller to be presented via a swipe gesture if 'presentsWithGesture' is 'YES' (the default).
//    func splitViewController(svc: UISplitViewController!, willHideViewController aViewController: UIViewController!, withBarButtonItem barButtonItem: UIBarButtonItem!, forPopoverController pc: UIPopoverController!) {
//        
//    }
    
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
//    func splitViewController(svc: UISplitViewController!, willShowViewController aViewController: UIViewController!, invalidatingBarButtonItem barButtonItem: UIBarButtonItem!) {
//        
//    }
    
    // Called when the view controller is shown in a popover so the delegate can take action like hiding other popovers.
//    func splitViewController(svc: UISplitViewController!, popoverController pc: UIPopoverController!, willPresentViewController aViewController: UIViewController!) {
//        
//    }
    
    // Returns YES if a view controller should be hidden by the split view controller in a given orientation.
    // (This method is only called on the leftmost view controller and only discriminates portrait from landscape.)
//    func splitViewController(svc: UISplitViewController!, shouldHideViewController vc: UIViewController!, inOrientation orientation: UIInterfaceOrientation) -> Bool {
//        
//    }
}