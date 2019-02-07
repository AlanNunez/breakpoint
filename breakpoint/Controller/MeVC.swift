//
//  MeVC.swift
//  breakpoint
//
//  Created by Desarrollo on 2/4/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit
import Firebase

class MeVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.emailLbl.text = Auth.auth().currentUser?.email
    }
    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        let logoutPopup = UIAlertController(title: "Logout?", message: "Are your sure?", preferredStyle: .actionSheet)
        let logoutAction = UIAlertAction(title: "Logout", style: .destructive) { (buttonTapped) in
            do {
                try Auth.auth().signOut()
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC") as? AuthVC
                self.present(authVC!, animated: true, completion: nil)
            } catch {
                print(error)
            }
       }
        logoutPopup.addAction(logoutAction)
        self.present(logoutPopup, animated:  true, completion: nil)
    }
}
