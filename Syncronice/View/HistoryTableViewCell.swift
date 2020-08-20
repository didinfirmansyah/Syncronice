//
//  HistoryTableViewCell.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 19/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    let historyDate: UILabel = {
        let label = UILabel()
        label.text = "8 August 2020"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let historyImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "historyTiming")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let historyCategory: UILabel = {
        let label = UILabel()
        label.text = "Timing"
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let historyScoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score:"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let historyScoreContent: UILabel = {
        let label = UILabel()
        label.text = "2/3"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let historyConfidenceLabel: UILabel = {
        let label = UILabel()
        label.text = "Confidence:"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let historyConfidenceContent: UILabel = {
        let label = UILabel()
        label.text = "88 %"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.init(rgb: 0x004347)
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.init(rgb: 0xFAFFF0)
        
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupView(){
        
        self.addSubview(historyDate)
        self.addSubview(historyImage)
        self.addSubview(historyCategory)
        self.addSubview(historyScoreLabel)
        self.addSubview(historyScoreContent)
        self.addSubview(historyConfidenceLabel)
        self.addSubview(historyConfidenceContent)
        self.addSubview(separatorView)
        
        self.historyDate.snp.makeConstraints { (make) in
            make.top.left.equalTo(self)
        }
        
        self.historyImage.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.snp.left).offset(50)
            make.centerY.equalTo(self.snp.top).offset(50)
        }
        
        self.historyCategory.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(30)
            make.left.equalTo(self).offset(100)
        }
        
        self.historyScoreLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(55)
            make.left.equalTo(self).offset(100)
        }
        
        self.historyScoreContent.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(55)
            make.left.equalTo(self).offset(140)
        }
        
        self.historyConfidenceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(55)
            make.left.equalTo(self).offset(190)
        }
        
        self.historyConfidenceContent.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(55)
            make.left.equalTo(self).offset(265)
        }
        
        self.separatorView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(1)
        }
        
    }

}
