//
//  ViewController.swift
//  Cool Cars
//
//  Created by Zach Cervi on 3/20/20.
//  Copyright © 2020 Zach Cervi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    var selectedVehicle: Vehicle!
    var challeneger = Vehicle.init(make: "Dodge", model: "Challenger", subModel: "SRT", year: "2020", mpg: "19/30", msrp: "38,995", hp: "350", zeroToSixty: "3.2")
    
    var jeep = Vehicle.init(make: "Jeep", model: "Wrangler", subModel: "Rubicon", year: "2020", mpg: "18/25", msrp: "27,343", hp: "285", zeroToSixty: "15")
    
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "ToSelectedVehicle", sender: self)
    }
    
    @IBAction func onChallengerTapped(_ sender: Any) {
        selectVehicle(vehicle: challeneger)
    }
    
    @IBAction func onJeepTapped(_ sender: Any) {
        selectVehicle(vehicle: jeep)
    }
    
    func selectVehicle(vehicle: Vehicle){
        selectedVehicle = vehicle
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedVehicleVC = segue.destination as? SelectedVehicleVC {
            selectedVehicleVC.selectedVehicle = selectedVehicle
        }
    }
    
    @IBAction func unwindFromSelectedVehicleVC(undwindSegue: UIStoryboardSegue){
        selectedVehicle = nil
        nextBtn.isEnabled = false
    }
}

