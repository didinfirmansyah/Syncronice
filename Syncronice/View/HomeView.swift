//
//  HomeView.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 11/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit
import SnapKit

class HomeView: UIView {
    
    let titleText: UILabel = {
        let label = UILabel()
        label.text = "Challenge"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()

    let explanationText: UILabel = {
        let label = UILabel()
        label.text = "Choose the challenge"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let firstImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image5")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let firstText: UILabel = {
        let label = UILabel()
        label.text = "Sound Level"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x2E8177)
        return label
    }()

    let secondImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image6")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let secondText: UILabel = {
        let label = UILabel()
        label.text = "Dynamic"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x2E8177)
        return label
    }()
        
    let thirdButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setImage(UIImage(named: "image7"), for: .normal)
        return button
    }()
    
    let thirdText: UILabel = {
        let label = UILabel()
        label.text = "Timing"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x2E8177)
        return label
    }()

    let fourthImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image8")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let fourthText: UILabel = {
        let label = UILabel()
        label.text = "Pitch"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x2E8177)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(titleText)
        self.addSubview(explanationText)
        self.addSubview(firstImage)
        self.addSubview(firstText)
        self.addSubview(secondImage)
        self.addSubview(secondText)
        self.addSubview(thirdButton)
        self.addSubview(thirdText)
        self.addSubview(fourthImage)
        self.addSubview(fourthText)

        
        self.titleText.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(180)
            make.left.equalTo(self).offset(50)
        }

        self.explanationText.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleText.snp.bottom).offset(10)
            make.left.equalTo(self).offset(50)
        }

        self.firstImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.explanationText.snp.bottom).offset(50)
            make.left.equalTo(self).offset(50)
        }
        
        self.firstText.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstImage.snp.bottom).offset(0)
            make.left.equalTo(self).offset(60)
        }
        
        self.secondImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.explanationText.snp.bottom).offset(50)
            make.left.equalTo(self.firstImage.snp.right).offset(30)
        }
        
        self.secondText.snp.makeConstraints { (make) in
            make.top.equalTo(self.secondImage.snp.bottom).offset(0)
            make.left.equalTo(self).offset(235)
        }
        
        self.thirdButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstText.snp.bottom).offset(50)
            make.left.equalTo(self).offset(50)
        }
        
        self.thirdText.snp.makeConstraints { (make) in
            make.top.equalTo(self.thirdButton.snp.bottom).offset(0)
            make.left.equalTo(self).offset(60)
        }
        
        self.fourthImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.secondText.snp.bottom).offset(50)
            make.left.equalTo(self.thirdButton.snp.right).offset(30)
        }
        
        self.fourthText.snp.makeConstraints { (make) in
            make.top.equalTo(self.fourthImage.snp.bottom).offset(0)
            make.left.equalTo(self).offset(235)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
