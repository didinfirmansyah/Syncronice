//
//  TimingController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 14/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class TimingController: UIViewController {
    
    private var timingView: TimingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.timingView = TimingView(frame: self.view.frame)
        self.view = self.timingView
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.init(rgb: 0x2E8177).cgColor, UIColor.init(rgb: 0x0C5353).cgColor, UIColor.init(rgb: 0x004347).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        
        self.timingView.rentang100Button.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        
        let controller = PlayController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    

}
