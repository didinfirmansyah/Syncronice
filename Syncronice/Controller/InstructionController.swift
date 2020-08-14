//
//  InstructionController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 14/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class InstructionController: UIViewController {
    
    private var instructionView: InstructionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.instructionView = InstructionView(frame: self.view.frame)
        self.view = self.instructionView
        
        self.view.backgroundColor = UIColor.init(rgb: 0xFAFFF0)
        
        self.instructionView.backButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        
        self.dismiss(animated: true, completion: nil)
        
    }

}
