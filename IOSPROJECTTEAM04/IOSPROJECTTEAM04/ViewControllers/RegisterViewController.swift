//
//  RegisterPage.swift
//  IOSPROJECTTEAM04
//
//  Created by Karanam Gopichand on 3/6/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
