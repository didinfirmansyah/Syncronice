//
//  TimingView.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 14/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class TimingView: UIView {
    
    let titleText: UILabel = {
        let label = UILabel()
        label.text = "Series"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = UIColor.init(rgb: 0xFAFFF0)
        return label
    }()
    
    let explanationText: UILabel = {
        let label = UILabel()
        label.text = "Choose the series"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.init(rgb: 0xFAFFF0)
        return label
    }()
    
    let rentang1Button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Rentang1"), for: .normal)
        return button
    }()
    
    let rentang2Button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Rentang2"), for: .normal)
        return button
    }()
    
    let rentang5Button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Rentang5"), for: .normal)
        return button
    }()
    
    let rentang10Button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Rentang10"), for: .normal)
        return button
    }()
    
    let rentang20Button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Rentang20"), for: .normal)
        return button
    }()
    
    let rentang100Button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Rentang100"), for: .normal)
        return button
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(titleText)
        self.addSubview(explanationText)
        self.addSubview(rentang1Button)
        self.addSubview(rentang2Button)
        self.addSubview(rentang5Button)
        self.addSubview(rentang10Button)
        self.addSubview(rentang20Button)
        self.addSubview(rentang100Button)
        
        self.titleText.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(200)
            make.left.equalTo(self).offset(50)
        }
        
        self.explanationText.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleText.snp.bottom).offset(10)
            make.left.equalTo(self).offset(50)
        }
        
        self.rentang1Button.snp.makeConstraints { (make) in
            make.top.equalTo(self.explanationText.snp.bottom).offset(50)
            make.left.equalTo(self).offset(50)
        }
        
        self.rentang2Button.snp.makeConstraints { (make) in
            make.top.equalTo(self.explanationText.snp.bottom).offset(50)
            make.right.equalTo(self).offset(-50)
        }
        
        self.rentang5Button.snp.makeConstraints { (make) in
            make.top.equalTo(self.rentang1Button.snp.bottom).offset(50)
            make.left.equalTo(self).offset(50)
        }
        
        self.rentang10Button.snp.makeConstraints { (make) in
            make.top.equalTo(self.rentang1Button.snp.bottom).offset(50)
            make.right.equalTo(self).offset(-50)
        }
        
        self.rentang20Button.snp.makeConstraints { (make) in
            make.top.equalTo(self.rentang5Button.snp.bottom).offset(50)
            make.left.equalTo(self).offset(50)
        }
        
        self.rentang100Button.snp.makeConstraints { (make) in
            make.top.equalTo(self.rentang5Button.snp.bottom).offset(50)
            make.right.equalTo(self).offset(-50)
        }

                
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
