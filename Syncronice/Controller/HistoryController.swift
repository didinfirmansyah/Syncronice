//
//  HistoryController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 19/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit

class HistoryController: UIViewController {
    
    var varDate : [String] = ["8 August 2020", "8 August 2020", "8 August 2020", "8 August 2020", "30 July 2020", "30 July 2020", "15 July 2020"]
    
    var varImage : [String] = ["historyTiming", "historySoundLevel", "historyTiming", "historyPitch", "historyTiming", "historySoundLevel", "historyPitch"]
    
    var varCategory : [String] = ["Timing", "Sound Level", "Timing", "Pitch", "Timing", "Sound Level", "Pitch"]
    
    var varScore : [String] = ["2/3", "1/3", "3/3", "1/3", "2/3", "1/3", "0/3"]
    
    var varConfidence : [String] = ["88 %", "90 %", "65 %", "90 %", "88 %", "90 %", "30 %"]
    
    private var historyView: HistoryView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.historyView = HistoryView(frame: self.view.frame)
        self.view = self.historyView
        
        self.view.backgroundColor = UIColor.init(rgb: 0xFAFFF0)
        
        self.historyView.historyTableView.delegate = self
        self.historyView.historyTableView.dataSource = self
        
        self.historyView.backButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        
        let controller = HomeController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)

    }
    
}

extension HistoryController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return varImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HistoryTableViewCell
        cell.historyDate.text = varDate[indexPath.row]
        cell.historyImage.image = UIImage(named: varImage[indexPath.row])
        cell.historyCategory.text = varCategory[indexPath.row]
        cell.historyScoreContent.text = varScore[indexPath.row]
        cell.historyConfidenceContent.text = varConfidence[indexPath.row]
        return cell

    }
    
}
