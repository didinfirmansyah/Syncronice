//
//  PlayController.swift
//  Syncronice
//
//  Created by Aldowan Apta Premala on 11/08/20.
//  Copyright © 2020 Didin Firmansyah. All rights reserved.
//

import UIKit
import AVFoundation

class PlayController: UIViewController {
    
    private var playView: PlayView!
        
    var player: AVAudioPlayer?
    
    var sound : [String] = ["Timing1ms", "Timing2ms", "Timing5ms", "Timing10ms", "Timing20ms", "Timing50ms"]
    
    var sound2 : [String] = ["", ""]
    
    var number : Int!

    var modelData : DataModel = DataModel(date: "", score: "", confidence: "")
    
    var hitung : Int = 0
    
    var nilaiScore : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.playView = PlayView(frame: self.view.frame)
        self.view = self.playView
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.init(rgb: 0x2E8177).cgColor, UIColor.init(rgb: 0x0C5353).cgColor, UIColor.init(rgb: 0x004347).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        
        self.sound2 = ["Timing0ms", sound[self.number]]
        
        self.playView.backButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)
        
        self.playView.playButton.addTarget(self, action: #selector(ButtonPressed2), for: .touchUpInside)
        
        self.playView.syncButton.addTarget(self, action: #selector(ButtonPressed3), for: .touchUpInside)
        
        self.playView.delayButton.addTarget(self, action: #selector(ButtonPressed4), for: .touchUpInside)

    }
    
    @objc private func ButtonPressed(){
        
        let controller = HomeController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)

    }
    
    @objc private func ButtonPressed2(){
        
        playSound()
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: sound2[0], withExtension: "m4a") else { return }
        //print(number!)
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @objc private func ButtonPressed3(){
        
        if hitung < 2 {
            if sound2[0] == "Timing0ms" {
                nilaiScore = nilaiScore + 1
                self.playView.resultLabel.text = "CORRECT!"
            }else{
                self.playView.resultLabel.text = "WRONG!"
            }
            sound2.shuffle()
            self.playView.testLabel.text = "TEST \(hitung+2)"
            hitung = hitung + 1
        }else{
            if sound2[0] == "Timing0ms" {
                nilaiScore = nilaiScore + 1
                self.playView.resultLabel.text = "CORRECT!"
            }else{
                self.playView.resultLabel.text = "WRONG!"
            }
            let setTime = DateFormatter()
            setTime.dateFormat = "dd MMMM yyyy"
            modelData.date = setTime.string(from: Date())
            modelData.score = "\(nilaiScore)/3"
            modelData.confidence = "100 %"
            let controller = DoneController()
            controller.modelData2.date = self.modelData.date
            controller.modelData2.score = self.modelData.score
            controller.modelData2.confidence = self.modelData.confidence
            controller.modalTransitionStyle = .crossDissolve
            controller.modalPresentationStyle = .fullScreen
            hitung = 0
            present(controller, animated: true, completion: nil)
        }
        
    }
    
    @objc private func ButtonPressed4(){
        
        if hitung < 2 {
            if sound2[0] == sound[self.number] {
                nilaiScore = nilaiScore + 1
                self.playView.resultLabel.text = "CORRECT!"
            }else{
                self.playView.resultLabel.text = "WRONG!"
            }
            sound2.shuffle()
            self.playView.testLabel.text = "TEST \(hitung+2)"
            hitung = hitung + 1
        }else{
            if sound2[0] == sound[self.number] {
                nilaiScore = nilaiScore + 1
                self.playView.resultLabel.text = "CORRECT!"
            }else{
                self.playView.resultLabel.text = "WRONG!"
            }
            let setTime = DateFormatter()
            setTime.dateFormat = "dd MMMM yyyy"
            modelData.date = setTime.string(from: Date())
            modelData.score = "\(nilaiScore)/3"
            modelData.confidence = "100 %"
            let controller = DoneController()
            controller.modelData2.date = self.modelData.date
            controller.modelData2.score = self.modelData.score
            controller.modelData2.confidence = self.modelData.confidence
            controller.modalTransitionStyle = .crossDissolve
            controller.modalPresentationStyle = .fullScreen
            hitung = 0
            present(controller, animated: true, completion: nil)
        }
        
    }
    
}
