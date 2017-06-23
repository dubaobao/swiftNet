//
//  ViewController.swift
//  SwiftNet
//
//  Created by Cheng DU on 21/06/2017.
//  Copyright © 2017 Cheng DU. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let login = Login()
        login.email = "johndoe@client.com"
        login.password = "john_doe"
        let loginResult = LoginManager.login(login)
        print(loginResult?.userId)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

