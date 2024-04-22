//
//  LoginViewModel.swift
//  BRRMTestApp
//
//  Created by Milos on 21.4.24..
//

import Foundation
class LoginViewModel {
    func login(userEmail: String, password: String, completion: @escaping(Result<User, Error>) -> Void) {
        NetworkManager.shared.login(userEmail: userEmail, password: password) { result in
            completion(result)
        }
    }
}
