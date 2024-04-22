//
//  VehiclesViewController.swift
//  BRRMTestApp
//
//  Created by Milos on 21.4.24..
//

import UIKit

class VehiclesViewController: UIViewController {

    @IBOutlet weak var vehiclesView: UITableView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    var viewModel = VehiclesViewModel()
    var userId: String?
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVehiclesView()
        loadingView.startAnimating()
        fetchVehicles()
    }
    
    private func setupVehiclesView() {
//        self.navigationItem.setLeftBarButton(UIBarButtonItem(barButtonSystemItem: .action, target: self, action: <#T##Selector?#>), animated: true)
        userNameLabel.text = userName
        vehiclesView.dataSource = self
        vehiclesView.delegate = self
        vehiclesView.register(UINib(nibName: "VehicleTableViewCell", bundle: nil), forCellReuseIdentifier: "vehicle")
    }
    
    private func fetchVehicles() {
        guard let userId = userId else { return }
        viewModel.getVehicles(forUserId: userId) { [weak self] in
            DispatchQueue.main.async {
                self?.vehiclesView.reloadData()
                self?.loadingView.stopAnimating()
                self?.loadingView.isHidden = true
            }
        }
    }
    
    @IBAction func addNewVehicle(_ sender: Any) {
    }
    
}

extension VehiclesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.vehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = vehiclesView.dequeueReusableCell(withIdentifier: "vehicle", for: indexPath) as! VehicleTableViewCell
        let vehicle = viewModel.vehicles[indexPath.row]
        cell.vehicleID?.text = "Vehicle ID: " + vehicle.vehicleId!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 161
    }
    
}

extension VehiclesViewController: UITableViewDelegate {
    
}
