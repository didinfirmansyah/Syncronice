//
//  DoneController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 31/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class DoneController: UIViewController {
    
    private var doneView: DoneView!
    
    var modelData2 : DataModel = DataModel(date: "", score: "", confidence: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.doneView = DoneView(frame: self.view.frame)
        self.view = self.doneView
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.init(rgb: 0x2E8177).cgColor, UIColor.init(rgb: 0x0C5353).cgColor, UIColor.init(rgb: 0x004347).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        
        self.doneView.scoreLabel.text = self.modelData2.score
        self.doneView.confidenceLabel.text = self.modelData2.confidence
        
        let manager = CDManager()
        manager.saveData(date: self.modelData2.date, score: self.modelData2.score, confidence: self.modelData2.confidence)
        //print(manager.listData)
        
        self.doneView.backButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)
        
        self.doneView.doneButton.addTarget(self, action: #selector(ButtonPressed2), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        
        let controller = HomeController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)

    }
    
    @objc private func ButtonPressed2(){
        
        let controller = HistoryController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)

    }
    
}
