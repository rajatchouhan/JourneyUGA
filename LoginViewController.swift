//
//  LoginViewController.swift
//  MKMapViewSample
//
//  Created by Harshitha Tadinada on 2/10/18.
//  Copyright © 2018 koogawa. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let gradientLayer = CAGradientLayer()
    
    @IBOutlet weak var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 0.66, green: 0.97, blue: 1.90, alpha: 0.00)
        
        gradientLayer.frame = self.view.frame
        
        let color1 = UIColor(red: 41/255.0, green: 141/255.0, blue: 50/255.0, alpha: 1.0).cgColor as CGColor
        let color2 = UIColor(red: 43/255.0, green: 179/255.0, blue: 157/255.0, alpha: 1.0).cgColor as CGColor
        let color3 = UIColor(red: 50/255.0, green: 160/255.0, blue: 177/255.0, alpha: 1.0).cgColor as CGColor
        let color4 = UIColor(red: 69/255.0, green: 110/255.0, blue: 192/255.0, alpha: 1.0).cgColor as CGColor
        gradientLayer.colors = [color1, color2, color3, color4]
        
        gradientLayer.locations = [0.0, 0.25 ,0.5, 0.75]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        login!.layer.cornerRadius = 9
        login!.layer.masksToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
