//
//  ViewController2.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 07/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()

        gradient.frame = view.bounds
        gradient.colors = [UIColor.init(rgb: 0x2E8177).cgColor, UIColor.init(rgb: 0x0C5353).cgColor, UIColor.init(rgb: 0x004347).cgColor]

        self.view.layer.insertSublayer(gradient, at: 0)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
