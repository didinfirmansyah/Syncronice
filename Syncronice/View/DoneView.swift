//
//  DoneView.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 31/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class DoneView: UIView {
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Back"), for: .normal)
        return button
    }()
    
    let doneButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Done"), for: .normal)
        return button
    }()
    
    let scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "2/3"
        label.font = UIFont.systemFont(ofSize: 21)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let confidenceLabel: UILabel = {
        let label = UILabel()
        label.text = "88 %"
        label.font = UIFont.systemFont(ofSize: 21)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(backButton)
        self.addSubview(doneButton)
        self.doneButton.addSubview(scoreLabel)
        self.doneButton.addSubview(confidenceLabel)
        
        self.backButton.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(50)
            make.left.equalTo(self).offset(30)
        }
        
        self.doneButton.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self)
        }
        
        self.scoreLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.doneButton).offset(240)
            make.centerX.equalTo(self.doneButton)
        }
        
        self.confidenceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.doneButton).offset(310)
            make.centerX.equalTo(self.doneButton)
        }

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
