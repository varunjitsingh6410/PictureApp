//
//  LoginViewController.swift
//  PictureApp
//
//  Created by Varun Jit Singh on 7/16/20.
//  Copyright © 2020 ThurgoodMarshall. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        performSegue(withIdentifier: "LoginToRegister", sender: sender)
    }
    
    @IBAction func btnLogin(_ sender: Any) {
    }
    
}
