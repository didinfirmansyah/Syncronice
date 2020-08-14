//
//  InstructionView.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 14/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class InstructionView: UIView {

    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Back2"), for: .normal)
        return button
    }()
    
    let titleText: UILabel = {
        let label = UILabel()
        label.text = "Instruction"
        label.font = UIFont.systemFont(ofSize: 21)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let instructionImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Instruction")
        imageView.contentMode = .scaleToFill
        return imageView
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(backButton)
        self.addSubview(titleText)
        self.addSubview(instructionImage)
        
        
        self.backButton.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(50)
            make.leading.equalTo(self).offset(30)
        }
        
        self.titleText.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide).offset(50)
            make.centerX.equalTo(self)
        }
        
        self.instructionImage.snp.makeConstraints { (make) in
            //make.top.equalTo(self).offset(150)
            make.centerX.equalToSuperview()
            make.top.equalTo(titleText.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
