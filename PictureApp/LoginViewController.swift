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
        //performSegue(withIdentifier: "LoginToRegister", sender: sender)
        let newViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController")
        newViewController.modalPresentationStyle = .overCurrentContext
        present(newViewController, animated: true, completion: nil)
    }
    
    @IBAction func btnLogin(_ sender: Any) {
    }
    
}
