//
//  HistoryView.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 19/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class HistoryView: UIView {
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Back2"), for: .normal)
        return button
    }()
    
    let titleText: UILabel = {
        let label = UILabel()
        label.text = "History"
        label.font = UIFont.systemFont(ofSize: 21)
        label.textColor = UIColor.init(rgb: 0x004347)
        return label
    }()
    
    let historyTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(HistoryTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = 85
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.init(rgb: 0xFAFFF0)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup(){
        
        self.addSubview(backButton)
        self.addSubview(titleText)
        self.addSubview(historyTableView)
        
        self.backButton.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(50)
            make.leading.equalTo(self).offset(30)
        }
        
        self.titleText.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(50)
            make.centerX.equalTo(self)
        }
        
        self.historyTableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleText.snp.bottom).offset(50)
            make.left.equalTo(self).offset(30)
            make.right.equalTo(self).offset(-30)
            make.bottom.equalTo(self).offset(-50)
        }
        
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
