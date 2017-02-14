//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by JB Thompson on 8/20/16.
//  Copyright © 2016 JB Thompson. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    @IBOutlet weak var planetImageView: UIImageView!

    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let planet = planet {
            updateWithPlanet(planet)
        }

        // Do any additional setup after loading the view.
    }
    
    func updateWithPlanet(_ planet: Planet) {
        title = planet.name
        planetImageView.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        lengthLabel.text = "\(planet.dayLength) hours"
        distanceLabel.text = "\(planet.millionKMsFromSun) 10^6km"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
