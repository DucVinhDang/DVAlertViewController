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

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
//        let al = DVAlertViewController()
//        al.alertTitle = "Hello all you guys"
//        al.alertSubTitle = "I'm so happy to be here..."
//        al.addButtonWithTitle(title: "Hello world 1", buttonType: .Normal, alertViewStyle: .Info)
//        al.addButtonWithTitle(title: "Hello world 2", buttonType: .Normal, alertViewStyle: .Info)
//        al.addButtonWithTitle(title: "Hello world 3", buttonType: .Normal, alertViewStyle: .Info)
//        al.addButtonWithTitle(title: "Hello world 4", buttonType: .Normal, alertViewStyle: .Info)
//        al.addButtonWithTitle(title: "Cancel", buttonType: .Cancel, alertViewStyle: .Info)
//        al.duration = 0.7
//        al.target = self
//        al.delegate = self
//        al.showAlert(animate: true)
        
        DVAlertViewController().showAlertInputForm(target: self, delegate: self, title: "Đăng nhập", subTitle: "Nhập thông tin tài khoản của bạn dưới đây", duration: 0.5, inputTitles: ["Tên đăng nhập", "Mật khẩu"], cancelButtonTitle: "Huỷ", otherButtonsTitles: ["Đăng nhập", "Quên mật khẩu?"], animate: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showSuccessAction(sender: AnyObject) {
        let alert = DVAlertViewController()
        alert.showAlertSuccess(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends. You have finished this event. Now you can send your result to all your friends. You have finished this event. Now you can send your result to all your friends", duration: 0.8, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback", "Report", "Setting"], animate: true)
    }

    @IBAction func showInfoAction(sender: AnyObject) {
        let alert = DVAlertViewController()
        alert.showAlertInfo(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback", "Report", "Setting", "About"], animate: true)
        alert.addButtonWithTitle(title: "Report", buttonType: .Normal, alertViewStyle: .Info)
    }

    @IBAction func showWarningAction(sender: AnyObject) {
        let alert = DVAlertViewController()
        alert.showAlertWarning(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.8, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
    }
    
    @IBAction func showErrorAction(sender: AnyObject) {
        let alert = DVAlertViewController()
        alert.showAlertError(target: self, title: "Errors detected", subTitle: "You are in trouble!!! There are so many errors right here, please do something or your device will be destroyed !!!", cancelButtonTitle: "I know it")
    }
    
    @IBAction func showNoticeAction(sender: AnyObject) {
        let alert = DVAlertViewController()
        alert.showAlertNotice(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
    }
    
    @IBAction func goToPresentViewAction(sender: AnyObject) {
        let otherVC = OtherViewController(nibName: "OtherViewController", bundle: nil)
        self.presentViewController(otherVC, animated: true, completion: nil)
    }
    
    // MARK: - DVAlertViewController Delegate

    func dvAlertView(dvAlertView: DVAlertViewController, didClickButtonAtIndex: Int) {
        switch(didClickButtonAtIndex) {
        case 0:
            print("\(didClickButtonAtIndex) was clicked so this alert will be hided")
        case 1:
            print("\(didClickButtonAtIndex) was clicked again")
        case 2:
            print("\(didClickButtonAtIndex) was clicked three times")
        case 3:
            print("\(didClickButtonAtIndex) was clicked again and again")
        case 4:
            print("\(didClickButtonAtIndex) was clicked very hard")
        default:
            break
        }
    }
    
    func dvAlertViewWillAppear(dvAlertView dvAlertView: DVAlertViewController) {
        print("Will appear")
    }
    
    func dvAlertViewDidAppear(dvAlertView dvAlertView: DVAlertViewController) {
        print("Did appear")
    }
    
    func dvAlertViewWillDisappear(dvAlertView dvAlertView: DVAlertViewController) {
        print("Will disappear")
    }
    
    func dvAlertViewDidDisappear(dvAlertView dvAlertView: DVAlertViewController) {
        print("Did disappear")
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
