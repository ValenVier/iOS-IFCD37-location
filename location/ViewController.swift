//
//  ViewController.swift
//  location
//
//  Created by Javier Rodríguez Valentín on 08/10/2021.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var map: MKMapView!

    let location = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        location.requestAlwaysAuthorization()
        location.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            location.delegate = self
            location.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            
        }
        
        
    }

    

}

