//
//  SelectedVehicleVC.swift
//  Cool Cars
//
//  Created by Zach Cervi on 3/20/20.
//  Copyright © 2020 Zach Cervi. All rights reserved.
//

import UIKit

class SelectedVehicleVC: UIViewController {

    var selectedVehicle: Vehicle!
    @IBOutlet weak var vehicleTitleLbl: UILabel!
    @IBOutlet weak var msrpLbl: UILabel!
    @IBOutlet weak var mpgLbl: UILabel!
    @IBOutlet weak var hpLbl: UILabel!
    @IBOutlet weak var zeroToSixtyLbl: UILabel!
    @IBOutlet weak var vehicleImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI(vehicle: selectedVehicle)
       
    }
    
    func setupUI(vehicle: Vehicle){
        let year = vehicle.year!
        let make = vehicle.make!
        let model = vehicle.model!
        let submodel = vehicle.subModel!
        let msrp = vehicle.msrp!
        let mpg = vehicle.mpg!
        let hp = vehicle.hp!
        let zeroToSixty = vehicle.zeroToSixty!
        
        let titleString = "\(year) \(make) \(model) \(submodel)"
        vehicleTitleLbl.text = titleString
        
        let msrpString = "MSRP $\(msrp)"
        msrpLbl.text = msrpString
        
        mpgLbl.text = mpg
        
        let hpString = "\(hp) HP"
        hpLbl.text = hpString
        
        let zeroToSixtyString = "\(zeroToSixty) sec"
        zeroToSixtyLbl.text = zeroToSixtyString
        
        if(model == "Challenger"){
            vehicleImage.image = UIImage(named: "Challenger")
        } else {
            vehicleImage.image = UIImage(named: "Wrangler")
        }
        
        
    }

}
