//
//  RegisterViewController.swift
//  PictureApp
//
//  Created by Varun Jit Singh on 7/16/20.
//  Copyright © 2020 ThurgoodMarshall. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var tfEmailReg: UITextField!
    @IBOutlet weak var tfPasswordReg: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    
    var handle: AuthStateDidChangeListenerHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
          // ...
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Auth.auth().removeStateDidChangeListener(handle!)
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        Auth.auth().createUser(withEmail: tfEmailReg.text!, password: tfPasswordReg.text!) { authResult, error in
          // ...
        }
        //performSegue(withIdentifier: "RegisterToLogin", sender: self)
        let newViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController")
        newViewController.modalPresentationStyle = .overCurrentContext
        present(newViewController, animated: true, completion: nil)
    }
    
}
