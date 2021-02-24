//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(of: sender.currentTitle!)
        changeBackgroundOpacity(of: sender)
        print(sender.currentTitle!)
    }
    
    func playSound(of nameOfSong: String) {
        
        let url = Bundle.main.url(forResource: nameOfSong, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    func changeBackgroundOpacity(of button:UIButton){
        button.alpha = 0.5
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            button.alpha = 1
            print("End")
        }
    }
}


