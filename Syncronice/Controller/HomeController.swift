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

    }
    
    @objc private func ButtonPressed(){
        present(PlayController(), animated: true, completion: nil)
    }


}