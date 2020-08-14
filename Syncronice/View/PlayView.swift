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
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Back"), for: .normal)
        //button.setBackgroundImage(UIImage(named: "Image3"), for: .normal)
        //print(UIImage(named: "Image3"))
        return button
    }()
    
    let playButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Play"), for: .normal)
        return button
    }()

    let selectionText: UILabel = {
        let label = UILabel()
        label.text = "Choose you answer"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.init(rgb: 0xFAFFF0)
        return label
    }()
    
    let syncButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Sync"), for: .normal)
        return button
    }()
    
    let delayButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Delay"), for: .normal)
        return button
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(backButton)
        self.addSubview(playButton)
        self.addSubview(selectionText)
        self.addSubview(syncButton)
        self.addSubview(delayButton)
        
        
        self.backButton.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(50)
            make.left.equalTo(self).offset(30)
            //make.size.equalTo(CGSize(width: 100, height: 100))
        }
        
        self.playButton.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(300)
            make.centerX.equalTo(self)
        }
        
        self.selectionText.snp.makeConstraints { (make) in
            make.top.equalTo(self.playButton.snp.bottom).offset(50)
            make.centerX.equalTo(self)
        }
        
        self.syncButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.selectionText.snp.bottom).offset(50)
            make.left.equalTo(self).offset(100)
        }
        
        self.delayButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.selectionText.snp.bottom).offset(50)
            make.right.equalTo(self).offset(-100)
        }

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
