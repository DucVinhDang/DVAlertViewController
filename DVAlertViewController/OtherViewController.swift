//
//  OtherViewController.swift
//  DVAlertViewController
//
//  Created by Đặng Vinh on 3/30/15.
//  Copyright (c) 2015 DVISoft. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showNormalAlertAction(sender: AnyObject) {
        DVAlertViewController().showAlertInfo(target: self, delegate: nil, title: "This is an alert", subTitle: "Hello, i'm an alert !", duration: 0.8, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Hi", "How are you", "Bye"], animate: true)
    }

    @IBAction func backAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
