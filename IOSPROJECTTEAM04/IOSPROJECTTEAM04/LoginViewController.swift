//
//  ViewController.swift
//  IOSPROJECTTEAM04
//
//  Created by Karanam Gopichand on 2/22/24.
//

import UIKit

class LoginViewController: UIViewController {

    class LoginViewController: UIViewController {

        @IBOutlet weak var usernameTextField: UITextField!
        @IBOutlet weak var passwordTextField: UITextField!

        override func viewDidLoad() {
            super.viewDidLoad()
            // Additional setup if needed
        }

        @IBAction func loginButtonTapped(_ sender: UIButton) {
            guard let username = usernameTextField.text,
                  let password = passwordTextField.text else {
                // Handle empty text fields or other validation
                return
            }

            // Set up the login API endpoint URL
            let loginURLString = "https://your-backend-api.com/login"
            guard let loginURL = URL(string: loginURLString) else {
                // Handle invalid URL
                return
            }

            // Create the login request
            var request = URLRequest(url: loginURL)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")

            // Create the login parameters
            let loginParams: [String: Any] = [
                "username": username,
                "password": password
            ]

            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: loginParams)
            } catch {
                // Handle JSON serialization error
                print("Error serializing JSON: \(error)")
                return
            }

            // Perform the login request
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                // Handle the response
                if let error = error {
                    print("Error: \(error)")
                    return
                }

                guard let data = data else {
                    // Handle empty response
                    return
                }

                // Parse the response JSON if needed
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    // Handle the JSON response
                    print("Response JSON: \(json)")
                } catch {
                    // Handle JSON parsing error
                    print("Error parsing JSON: \(error)")
                }
            }

            // Start the task
            task.resume()
        }
    }



}

