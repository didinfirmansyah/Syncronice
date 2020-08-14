//
//  MainController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 10/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    private var homeView: HomeView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.homeView = HomeView(frame: self.view.frame)
        self.view = self.homeView

        self.view.backgroundColor = UIColor.init(rgb: 0xFAFFF0)
        
        self.homeView.thirdButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)
        
        self.homeView.instructionButton.addTarget(self, action: #selector(ButtonPressed2), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        
        let controller = PlayController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    @objc private func ButtonPressed2(){
        
        let controller = InstructionController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }



}
