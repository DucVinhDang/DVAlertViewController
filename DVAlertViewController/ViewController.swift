//
//  ViewController.swift
//  DVAlertViewController
//
//  Created by Đặng Vinh on 3/29/15.
//  Copyright (c) 2015 DVISoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DVAlertViewControllerDelegate {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        var al = DVAlertViewController()
        al.addButtonWithTitle(title: "Hello world 1", buttonType: .Normal, alertViewStyle: .Info)
        al.addButtonWithTitle(title: "Hello world 2", buttonType: .Normal, alertViewStyle: .Info)
        al.addButtonWithTitle(title: "Hello world 3", buttonType: .Normal, alertViewStyle: .Info)
        al.addButtonWithTitle(title: "Hello world 4", buttonType: .Normal, alertViewStyle: .Info)
        al.addButtonWithTitle(title: "Cancel", buttonType: .Cancel, alertViewStyle: .Info)
        al.alertTitle = "Hello all you guys"
        al.alertSubTitle = "I'm so happy to be here..."
        al.duration = 0.7
        al.target = self
        al.delegate = self
        al.showAlert(animate: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showSuccessAction(sender: AnyObject) {
        var alert = DVAlertViewController()
        alert.showAlertSuccess(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback", "Report", "Setting"], animate: true)
    }

    @IBAction func showInfoAction(sender: AnyObject) {
        var alert = DVAlertViewController()
        alert.showAlertInfo(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
        alert.addButtonWithTitle(title: "Report", buttonType: .Normal, alertViewStyle: .Info)
    }

    @IBAction func showWarningAction(sender: AnyObject) {
        var alert = DVAlertViewController()
        alert.showAlertWarning(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
    }
    
    @IBAction func showErrorAction(sender: AnyObject) {
        var alert = DVAlertViewController()
        alert.showAlertError(target: self, title: "Errors detected", subTitle: "You are in trouble!!! There are so many errors right here, please do something or your device will be destroyed !!!", cancelButtonTitle: "I know it")
    }
    
    @IBAction func showNoticeAction(sender: AnyObject) {
        var alert = DVAlertViewController()
        alert.showAlertNotice(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
    }
    
    @IBAction func goToPresentViewAction(sender: AnyObject) {
        var otherVC = OtherViewController(nibName: "OtherViewController", bundle: nil)
        self.presentViewController(otherVC, animated: true, completion: nil)
    }
    
    // MARK: - DVAlertViewController Delegate

    func dvAlertView(dvAlertView: DVAlertViewController, didClickButtonAtIndex: Int) {
        switch(didClickButtonAtIndex) {
        case 0:
            println("\(didClickButtonAtIndex) was clicked so this alert will be hided")
        case 1:
            println("\(didClickButtonAtIndex) was clicked again")
        case 2:
            println("\(didClickButtonAtIndex) was clicked three times")
        case 3:
            println("\(didClickButtonAtIndex) was clicked again and again")
        case 4:
            println("\(didClickButtonAtIndex) was clicked very hard")
        default:
            break
        }
    }
    
    func dvAlertViewWillAppear(#dvAlertView: DVAlertViewController) {
        println("Will appear")
    }
    
    func dvAlertViewDidAppear(#dvAlertView: DVAlertViewController) {
        println("Did appear")
    }
    
    func dvAlertViewWillDisappear(#dvAlertView: DVAlertViewController) {
        println("Will disappear")
    }
    
    func dvAlertViewDidDisappear(#dvAlertView: DVAlertViewController) {
        println("Did disappear")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
