//
//  VehicleTableViewCell.swift
//  BRRMTestApp
//
//  Created by Milos on 21.4.24..
//

import UIKit

class VehicleTableViewCell: UITableViewCell {

    @IBOutlet weak var vehicleID: UILabel!
    @IBOutlet weak var createdAt: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
