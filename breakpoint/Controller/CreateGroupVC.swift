//
//  CreateGroupVCViewController.swift
//  breakpoint
//
//  Created by Desarrollo on 2/6/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {

    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var groupTextField: InsetTextField!
    @IBOutlet weak var emailTextField: InsetTextField!
    @IBOutlet weak var groupMemberLbl: UILabel!
    @IBOutlet weak var doneBTn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func closeBtnWasPressed(_ sender: Any) {
    }
    @IBAction func doneBtwnWasPressed(_ sender: Any) {
    }
}
