//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by Jay Maloney on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //FIRST NECESSARY FUNCTION FOR TABLEVIEW
    //HOW MANY ROWS
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlanetController.planets.count
    }
    
    //SECOND NECESSARY FUNCTION FOR TABLEVIEW
    //DEFINE THE CELL STRUCTURE/CONTENT/BEHAVIOR
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]

        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "planetCell \(indexPath.row + 1)"
        cell.imageView?.contentMode = .ScaleAspectFill
        cell.imageView?.image = UIImage(named: planet.imageName)

        return cell
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "planetUpdate" {
            
            if let detailViewController = segue.destinationViewController as? PlanetDetailViewController {
                
                _ = detailViewController.view
                
                let indexPath = self.tableView.indexPathForSelectedRow
                
                if let selectedRow = indexPath?.row {
                    
                    let planet = PlanetController.planets[selectedRow]
                    
                    detailViewController.updateWithPlanet(planet)
                }
            }
        }
    }
        
}
