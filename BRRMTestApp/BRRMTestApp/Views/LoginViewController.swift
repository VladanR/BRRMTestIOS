//
//  ViewController.swift
//  BRRMTestApp
//
//  Created by Milos on 21.4.24..
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        guard let email = emailField.text, let password = passwordField.text else {
            return
        }
        
        do {
            try viewModel.login(userEmail: email, password: password) { result in
                switch result {
                case .success(let user):
                    // Navigate to next screen upon successful login
                    print("USER DATA: \(user)")
                    
                    DispatchQueue.main.async {
                        self.navigateToVehicles(with: user.id, userName: user.name)
                       
                    }
                case .failure(let error):
                    // Show error message
                    print("Login failed: \(error.localizedDescription)")
                    // Možete dodati i prikazivanje alerta sa porukom o grešci
                }
            }
        } catch {
            // Handle error from login function
            print("Error during login: \(error.localizedDescription)")
        }
    }
    
    private func navigateToVehicles(with userID: String?, userName: String?) {
        guard let vehiclesVC = storyboard?.instantiateViewController(withIdentifier: "VehiclesViewConroller") as? VehiclesViewController else {
            return
        }
        vehiclesVC.userId = userID
        vehiclesVC.userName = userName
        vehiclesVC.modalPresentationStyle = .overFullScreen
        present(vehiclesVC, animated: true)
//        navigationController?.pushViewController(vehiclesVC, animated: true)
    }
    
}

