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
    
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed
    }
    
    @IBAction func login(_ sender: Any) {
        
        if emailTF.text == "" {
            
            self.showAlert(str: "Please enter email")
            return
        }
        
        if passwordTF.text == "" {
            
            self.showAlert(str: "Please enter password")
            return
        }
        
        Task {
            
            await login(email: usernameTF.text!, password: passwordTF.text!)
        }

    }
    
    
    func login(email: String, password: String) async {
        do {
            
            try await AuthenticationManager.shared.signIn(email: email, password: password)
            
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MyTabBar") as! UITabBarController
            self.navigationController?.pushViewController(vc, animated: true)
            
        } catch {
            
            self.messageLBL.text = "Invalid Login Credentials! Please try again."
        }
    }
    
    
    @IBAction func registerBtnClicked(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
    


