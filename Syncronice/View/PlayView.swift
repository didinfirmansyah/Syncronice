//
//  PlayView.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 11/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit
import SnapKit

class PlayView: UIView {
    
    let homeButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setImage(UIImage(named: "image3"), for: .normal)
        return button
    }()
    
    let mainButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Move", for: .normal)
        button.backgroundColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        return button
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(homeButton)
        self.addSubview(mainButton)
        
        self.homeButton.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(50)
            make.left.equalTo(self).offset(50)
        }
        
        self.mainButton.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(200)
            make.left.equalTo(self).offset(200)
        }

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
