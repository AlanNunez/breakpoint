//
//  AuthVC.swift
//  breakpoint
//
//  Created by Alan Nunez on 01/02/2019.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func facebookSignInBtwWasPressed(_ sender: Any) {
    }
}
