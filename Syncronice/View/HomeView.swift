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
    
    let Scroll: UIScrollView = {
        let scrollView = UIScrollView()
        //scrollView.backgroundColor = .yellow
        return scrollView
    }()
    
    let titleText: UILabel = {
        let label = UILabel()
        label.text = "Hello,"
        label.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    // series
    let Categories: UILabel = {
        let label = UILabel()
        label.text = "Categories"
        label.font = UIFont.systemFont(ofSize: 18)
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
    
    let firstImage: UIButton = {
        let imageView = UIButton()
//        imageView.image = UIImage(named: "Image5")
        imageView.setImage(UIImage(named: "NewSL")?.withRenderingMode(.alwaysOriginal), for: .normal)
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let secondImage: UIButton = {
        let imageView = UIButton()
//        imageView.image = UIImage(named: "Image6")
        imageView.setImage(UIImage(named: "newDynamic")?.withRenderingMode(.alwaysOriginal), for: .normal)
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    let thirdButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setImage(UIImage(named: "newTiming")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()

    let fourthImage: UIButton = {
        let imageView = UIButton()
        imageView.setImage(UIImage(named: "newPitch")?.withRenderingMode(.alwaysOriginal), for: .normal)
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    // instruksi button
    let instructionButton: UIButton = {
        let history = UIButton()
        history.setImage(UIImage(systemName: "questionmark.square.fill"), for: .normal)
        history.tintColor = UIColor.init(rgb: 0x004347)
        return history
    }()
    
    // container
    let container: UIButton = {
        let box = UIButton()
        box.setImage(UIImage(named: "History")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return box
    }()
    
    // label score
    let score: UILabel = {
       let score = UILabel()
        score.text = "2 / 3"
        score.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        score.textColor = .white
        return score
    }()
    // label score 2
    let score2: UILabel = {
       let score = UILabel()
        score.text = "88 %"
        score.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        score.textColor = .white
        return score
    }()
    // label score 3
    let score3: UILabel = {
       let score = UILabel()
        score.text = "Score"
        score.font = UIFont.systemFont(ofSize: 16)
        score.textColor = .white
        return score
    }()
    // label score 4
    let score4: UILabel = {
       let score = UILabel()
        score.text = "Confidence"
        score.font = UIFont.systemFont(ofSize: 16)
        score.textColor = .white
        return score
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(Scroll)
        self.Scroll.addSubview(titleText)
        self.Scroll.addSubview(instructionButton)
        //history container
        self.Scroll.addSubview(container)
        self.Scroll.addSubview(Categories)
        self.container.addSubview(score)
        self.container.addSubview(score2)
        self.container.addSubview(score3)
        self.container.addSubview(score4)
        self.Scroll.addSubview(explanationText)
        self.Scroll.addSubview(firstImage)
//        self.addSubview(firstText)
        self.Scroll.addSubview(secondImage)
//        self.addSubview(secondText)
        self.Scroll.addSubview(thirdButton)
//        self.addSubview(thirdText)
        self.Scroll.addSubview(fourthImage)
//        self.addSubview(fourthText)

        self.Scroll.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self)
        }
        
        self.titleText.snp.makeConstraints { (make) in
            make.top.equalTo(self.Scroll).offset(30)
            make.leading.equalTo(self.Scroll).offset(45)
        }
        //history
        self.instructionButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.Scroll).offset(30)
            make.trailing.equalTo(self.Scroll).offset(-30)
        }
        self.explanationText.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleText.snp.bottom).offset(10)
            make.leading.equalTo(self.Scroll).offset(45)
        }
        // history Container
        self.container.snp.makeConstraints { (make) in
            make.top.equalTo(self.explanationText.snp.bottom).offset(20)
            make.leading.equalTo(self.Scroll).offset(20)
            make.trailing.equalTo(self.Scroll).offset(-20)
        }
        // score label
        self.score.snp.makeConstraints { (make) in
            make.leading.equalTo(self.container).offset(80)
            make.top.equalTo(self.container).offset(80)
        }
        // score label 2
        self.score2.snp.makeConstraints { (make) in
            make.trailing.equalTo(self.container).offset(-70)
            make.top.equalTo(self.container).offset(80)
        }
        // score label 3
         self.score3.snp.makeConstraints { (make) in
             make.leading.equalTo(self.container).offset(85)
             make.top.equalTo(self.score).offset(30)
         }
        self.score4.snp.makeConstraints { (make) in
            make.trailing.equalTo(self.container).offset(-60)
            make.top.equalTo(self.score2).offset(30)
        }
        // categories label
        self.Categories.snp.makeConstraints { (make) in
            make.top.equalTo(self.container.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(40)
        }

        self.firstImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.Categories.snp.bottom).offset(-5)
            make.leading.equalTo(self.Scroll).offset(20)
        }
        
        
        self.secondImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.Categories.snp.bottom).offset(-5)
            make.trailing.equalTo(self.Scroll).offset(-20)
        }
        
        self.thirdButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstImage.snp.bottom).offset(10)
            make.leading.equalTo(self.Scroll).offset(20)
        }

        
        self.fourthImage.snp.makeConstraints { (make) in
            make.top.equalTo(self.secondImage.snp.bottom).offset(10)
            make.trailing.equalTo(self.Scroll).offset(-20)
            make.bottom.equalTo(self.Scroll).offset(-20)
        }
        
//        self.fourthText.snp.makeConstraints { (make) in
//            make.top.equalTo(self.fourthImage.snp.bottom).offset(0)
//            make.trailing.equalTo(self.Scroll).offset(-90)
//        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
