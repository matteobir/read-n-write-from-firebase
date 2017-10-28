//
//  ViewController.swift
//  aws
//
//  Created by Matteo Bir on 10/19/17.
//  Copyright © 2017 Matteo Bir. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class ViewController: UIViewController {

        var scores = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
       scores.append("1")
        scores.append("1")
        scores.append("1")

        print(scores)
       var ref = Database.database().reference()
        NSLog("writing to database")
        ref.child("scores").setValue(scores)
        NSLog("reading")
        ref.child("scores").observeSingleEvent(of: .value, with: { (snapshot) in
             print(snapshot)
        })
        }
        
    }




