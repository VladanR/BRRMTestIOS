//
//  NetworkManager.swift
//  BRRMTestApp
//
//  Created by Milos on 21.4.24..
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private let baseURL = "https://devapi.catch-system.com/v1/"
    private var token: String?
    
    private init() {}
    
    func login(userEmail: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
            let loginURL = URL(string: baseURL + "login")!
            var request = URLRequest(url: loginURL)
            request.httpMethod = "POST"
            let parameters: [String: Any] = ["email": userEmail, "password": password]
            request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
            request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let data = data, let httpResponse = response as? HTTPURLResponse else {
                    completion(.failure(NSError(domain: "NetworkManager", code: -1, userInfo: nil)))
                    return
                }
                if httpResponse.statusCode == 200 {
                    // Successful login
                    do {
                        let loginResponse = try JSONDecoder().decode(LoginResponse.self, from: data)
                        UserDefaults.standard.set(loginResponse.token, forKey: "token")
                        self.token = loginResponse.token
                        guard let user = loginResponse.user else {
                            completion(.failure(NSError(domain: "NetworkManager", code: -1, userInfo: nil)))
                            return
                        }
                        completion(.success(user))
                    } catch {
                        completion(.failure(error))
                    }
                } else {
                    // Failed login
                    completion(.failure(NSError(domain: "NetworkManager", code: httpResponse.statusCode, userInfo: nil)))
                }
            }
            task.resume()
        }
    
    func getVehicles(userId: String?, completion: @escaping(Result<[Vehicles], Error>) -> Void) {
        guard let userId = userId else { return }
        let vehiclesURL = URL(string: baseURL + "users/\(userId)/vehicles")!
        var request = URLRequest(url: vehiclesURL)
        UserDefaults.standard.string(forKey: "token")
        request.addValue("Bearer \(token!)", forHTTPHeaderField: "Authorization")
//        request.httpMethod = "GET"
        
        request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data, let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(NSError(domain: "NetworkManager", code: -1, userInfo: nil)))
                return
            }
            if httpResponse.statusCode == 200 {
                // Successful login
                do {
//                    var vehicles: [Vehicles] = []
                    let vehicles = try JSONDecoder().decode([Vehicles].self, from: data)
//                    vehicles.append(vehicle)
                    completion(.success(vehicles))
                } catch {
                    completion(.failure(error))
                }
            } else {
                // Failed login
                completion(.failure(NSError(domain: "NetworkManager", code: httpResponse.statusCode, userInfo: nil)))
                print(httpResponse)
            }
        }
        task.resume()
    }
}
