//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Jay Maloney on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    
    @IBOutlet weak var planetDiameterResult: UILabel!
    
    @IBOutlet weak var planetDistanceResult: UILabel!
    
    @IBOutlet weak var planetLODResult: UILabel!
    
    @IBOutlet weak var planetImageUpdated: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
        func updateWithPlanet(planet: Planet) {
            title = planet.name
            planetImageUpdated.image = UIImage(named: planet.imageName)
            planetDiameterResult.text = "\(planet.diameter)"
            planetDistanceResult.text = "\(planet.millionKMsFromSun) 10^6km"
            planetLODResult.text = "\(planet.dayLength) hours"
        }
    }
    


