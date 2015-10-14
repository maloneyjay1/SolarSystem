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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateWithPlanet (myPlanet: Planet) {
        
        planetDiameterResult.text = "\(myPlanet.diameter)"
        planetDistanceResult.text = "\(myPlanet.millionKMsFromSun)"
        planetLODResult.text = "\(myPlanet.dayLength)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
