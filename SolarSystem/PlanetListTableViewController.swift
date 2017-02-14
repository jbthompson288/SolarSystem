//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by JB Thompson on 8/18/16.
//  Copyright © 2016 JB Thompson. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlanetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.image = UIImage(named: planet.imageName)
        
        return cell
    }
   
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        if segue.identifier == "toPlanetDetail" {
            
            if let detailViewController = segue.destination as? PlanetDetailViewController,
                let selectedIndex = self.tableView.indexPathForSelectedRow?.row {
                
                let planet = PlanetController.planets[selectedIndex]
                detailViewController.planet = planet
            }
        }
    }
}

