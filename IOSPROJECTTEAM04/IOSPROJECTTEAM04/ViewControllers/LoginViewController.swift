//
//  ViewController.swift
//  IOSPROJECTTEAM04
//
//  Created by Karanam Gopichand on 2/22/24.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
   
    Auth.auth().createUser(withPhoneNumber: phoneNumber, password: password) { authResult, error in
      
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed
    }
    
}

