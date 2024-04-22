
import Foundation

class VehiclesViewModel {
    var vehicles: [Vehicles] = []
    
    func getVehicles(forUserId userId: String?, completion: @escaping() -> Void) {
        NetworkManager.shared.getVehicles(userId: userId) { result in
            switch result {
            case .success(let vehicles):
                self.vehicles = vehicles
            case .failure(let error):
                print("Failed to get vehicles: \(error.localizedDescription)")
            }
            completion()
        }
    }
}
