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
    
    var number : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.timingView = TimingView(frame: self.view.frame)
        self.view = self.timingView
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.init(rgb: 0x2E8177).cgColor, UIColor.init(rgb: 0x0C5353).cgColor, UIColor.init(rgb: 0x004347).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        
        self.timingView.rentang1Button.addTarget(self, action: #selector(ButtonPressed1), for: .touchUpInside)
        self.timingView.rentang2Button.addTarget(self, action: #selector(ButtonPressed2), for: .touchUpInside)
        self.timingView.rentang5Button.addTarget(self, action: #selector(ButtonPressed5), for: .touchUpInside)
        self.timingView.rentang10Button.addTarget(self, action: #selector(ButtonPressed10), for: .touchUpInside)
        self.timingView.rentang20Button.addTarget(self, action: #selector(ButtonPressed20), for: .touchUpInside)
        self.timingView.rentang50Button.addTarget(self, action: #selector(ButtonPressed50), for: .touchUpInside)
        self.timingView.backButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)

    }
    @objc private func ButtonPressed(){
           
           self.dismiss(animated: true, completion: nil)
           
       }
    
    @objc private func ButtonPressed1(){
        
        self.number = 0
        let controller = PlayController()
        controller.number = self.number
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    
    @objc private func ButtonPressed2(){
        
        self.number = 1
        let controller = PlayController()
        controller.number = self.number
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    
    @objc private func ButtonPressed5(){
        
        self.number = 2
        let controller = PlayController()
        controller.number = self.number
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }

    @objc private func ButtonPressed10(){
        
        self.number = 3
        let controller = PlayController()
        controller.number = self.number
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }

    @objc private func ButtonPressed20(){
        
        self.number = 4
        let controller = PlayController()
        controller.number = self.number
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    
    @objc private func ButtonPressed50(){
        
        self.number = 5
        let controller = PlayController()
        controller.number = self.number
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }


}
