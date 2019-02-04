//
//  DB_BASE.swift
//  breakpoint
//
//  Created by Desarrollo on 2/1/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import Foundation
import Firebase


var DB_BASE: DatabaseReference  = Database.database().reference()

class DataService {
    
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference   {
         return  _REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference   {
        return  _REF_GROUPS
    }
    
    var REF_FEED: DatabaseReference   {
        return  _REF_FEED
    }
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>) {
        REF_USERS.child(uid).updateChildValues(userData) { ( error : Error?, ref : DatabaseReference ) in if let error = error { print ( "Data could not be saved: \(error)." ) } else { print ( " Data saved successfully! " ) } }
    }
}
