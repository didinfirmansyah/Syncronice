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
    
    var sound = ["Timing1ms", "Timing2ms", "Timing5ms", "Timing10ms", "Timing20ms", "Timing50ms"]
    
    var number : Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.playView = PlayView(frame: self.view.frame)
        self.view = self.playView
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.init(rgb: 0x2E8177).cgColor, UIColor.init(rgb: 0x0C5353).cgColor, UIColor.init(rgb: 0x004347).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        
        self.playView.backButton.addTarget(self, action: #selector(ButtonPressed), for: .touchUpInside)
        
        self.playView.playButton.addTarget(self, action: #selector(ButtonPressed2), for: .touchUpInside)

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
        guard let url = Bundle.main.url(forResource: sound[self.number], withExtension: "m4a") else { return }
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
    
}
