//
//  SanFranViewController.swift
//  MKMapViewSample
//
//  Created by Harshitha Tadinada on 2/11/18.
//  Copyright © 2018 koogawa. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SanFranViewController: UIViewController {

    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var atlantaView: UIView!
    @IBOutlet weak var atlantaPics_ImageView: UIImageView!
    @IBOutlet weak var sanFran: UIImageView!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Locations Marks on Maps
        let location = CLLocationCoordinate2DMake(37.8270, -122.4230) // Alcatrez
        let location1 = CLLocationCoordinate2DMake(37.8087, -122.4098) // Pier 39
        let location2 = CLLocationCoordinate2DMake(37.8199, -122.4783) //golden gate bridge
        let location3 = CLLocationCoordinate2DMake(37.8059, -122.4230) // Ghirardelli Square
        let location4 = CLLocationCoordinate2DMake(37.8024, -122.4058) // Coit Tower
        let location5 = CLLocationCoordinate2DMake(37.8020, -122.4487)  // Palace of Fine arts
        let location6 = CLLocationCoordinate2DMake(37.7599, -122.4148)  //Mission District
        
        let span = MKCoordinateSpanMake(0.2, 0.2)
        let region = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        let annotation1 = MKPointAnnotation()
        let annotation2 = MKPointAnnotation()
        let annotation3 = MKPointAnnotation()
        let annotation4 = MKPointAnnotation()
        let annotation5 = MKPointAnnotation()
        let annotation6 = MKPointAnnotation()
        annotation.coordinate = location
        annotation1.coordinate = location1
        annotation2.coordinate = location2
        annotation3.coordinate = location3
        annotation4.coordinate = location4
        annotation5.coordinate = location5
        annotation6.coordinate = location6
        
        annotation.title = "Alcatrez"
        annotation1.title = "Pier 39"
        annotation2.title = "Golden Gate Bridge"
        annotation3.title = "Ghirardelli Square"
        annotation4.title = "GCoit Tower"
        annotation5.title = "Palace of Fine Arts"
        annotation6.title = "Mission District"
        
        
        map.addAnnotation(annotation)
        map.addAnnotation(annotation1)
        map.addAnnotation(annotation2)
        map.addAnnotation(annotation3)
        map.addAnnotation(annotation4)
        map.addAnnotation(annotation5)
        map.addAnnotation(annotation6)
        
        // Creating an array for animation of slide show
        sanFran.animationImages = [
            UIImage(named: "SF.png")!,
            UIImage(named: "SF1.png")!,
            UIImage(named: "SF2.png")!,
            UIImage(named: "SF3.png")!,
            UIImage(named: "SF4.png")!,
            UIImage(named: "SF5.png")!,
            UIImage(named: "SF6.png")!,
            UIImage(named: "SF7.png")!,
            UIImage(named: "SF8.png")!
        ]
        
        sanFran.animationDuration = 15
        sanFran.startAnimating()
        
        self.navigationItem.title = "San Fransisco"
        
    }

}
