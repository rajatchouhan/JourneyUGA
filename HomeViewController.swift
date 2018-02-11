//
//  HomeViewController.swift
//  MKMapViewSample
//
//  Created by Harshitha Tadinada on 2/10/18.
//  Copyright © 2018 koogawa. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var myJourney: UIButton!
    @IBOutlet weak var account: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        account!.layer.cornerRadius = 9
        account!.layer.masksToBounds = true
        myJourney!.layer.cornerRadius = 9
        myJourney!.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
