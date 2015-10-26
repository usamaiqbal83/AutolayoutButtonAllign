//
//  ViewController.swift
//  testingProject
//
//  Created by mac new on 10/8/15.
//  Copyright © 2015 mac new. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView?.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// TableView datasource and delegate implementation
extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell", forIndexPath: indexPath) as? CustomCell
        
        if indexPath.row == 0 {
            cell?.showButtons(showSkype: true, showEmail: true, showPhone: true)
        } else if indexPath.row == 1 {
            cell?.showButtons(showSkype: false, showEmail: true, showPhone: true)
        } else if indexPath.row == 2 {
            cell?.showButtons(showSkype: true, showEmail: false, showPhone: true)
        } else if indexPath.row == 3 {
            cell?.showButtons(showSkype: true, showEmail: true, showPhone: false)
        } else if indexPath.row == 4 {
            cell?.showButtons(showSkype: false, showEmail: false, showPhone: true)
        } else if indexPath.row == 5 {
            cell?.showButtons(showSkype: false, showEmail: true, showPhone: false)
        } else if indexPath.row == 6 {
            cell?.showButtons(showSkype: true, showEmail: false, showPhone: false)
        } else {
            cell?.showButtons(showSkype: true, showEmail: true, showPhone: true)
        }
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100;
    }
}
