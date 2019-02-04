//
//  CreatePostVC.swift
//  breakpoint
//
//  Created by Desarrollo on 2/4/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class CreatePostVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
