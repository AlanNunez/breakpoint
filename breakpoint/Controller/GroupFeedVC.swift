//
//  GroupFeedVC.swift
//  breakpoint
//
//  Created by Desarrollo on 2/8/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

/// - Description: Handle the groups

class GroupFeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtnView: UIView!
    
    var group: Group?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: group!) { (returnedEmails) in
           self.membersLbl.text = returnedEmails.joined(separator: ", ")
        }
    }
    
    func initData(forGroup group: Group) {
        self.group = group
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
