//
//  PlayController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 11/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class PlayController: UIViewController {
    
    private var playView: PlayView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.playView = PlayView(frame: self.view.frame)
        self.view = self.playView
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.init(rgb: 0x2E8177).cgColor, UIColor.init(rgb: 0x0C5353).cgColor, UIColor.init(rgb: 0x004347).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        
        self.playView.backButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        
        self.dismiss(animated: true, completion: nil)
        
    }
    


}
